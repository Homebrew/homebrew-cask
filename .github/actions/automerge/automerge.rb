# frozen_string_literal: false

require "json"

require "utils/github"

event_name, event_path, repository = ARGV

event = JSON.parse(File.read(event_path))

puts "ENV:"
puts ENV.to_h.sort.select { |k,| k.start_with?("GITHUB_") }.map { |k, v| "#{k}=#{v}" }
puts

puts "EVENT:"
puts JSON.pretty_generate(event)
puts

def find_pull_requests_for_workflow_run(event)
  workflow_run = event.fetch("workflow_run")

  prs = workflow_run.fetch("pull_requests")
  prs = prs.map { |pr| GitHub.open_api(pr.fetch("url")) }

  return prs unless prs.empty?

  base_repo = event.fetch("repository")

  head_repo = workflow_run.fetch("head_repository")
  head_branch = workflow_run.fetch("head_branch")
  head_sha = workflow_run.fetch("head_sha")

  GitHub.pull_requests(
    base_repo.fetch("full_name"),
    base:      base_repo.fetch("default_branch"),
    head:      "#{head_repo.fetch("owner").fetch("login")}:#{head_branch}",
    state:     :open,
    sort:      :updated,
    direction: :desc,
  ).select { |pr| pr.fetch("head").fetch("sha") == head_sha }
end

def merge_pull_request(pr_name, pr, repo:, number:, sha:, last_try:)
  # Reload pull request to get fresh (and all) data.
  pr = GitHub.open_api(pr.fetch("url"))

  if pr.fetch("labels").map { |l| l.fetch("name") }.include?("do not merge")
    puts "Pull request #{pr_name} is marked as “do not merge”."
    return
  end

  reviews = GitHub.open_api("#{pr.fetch("url")}/reviews")
  approvals = reviews.count { |r| r.fetch("state") == "APPROVED" && r.fetch("author_association") == "MEMBER" }
  if approvals.zero?
    puts "Pull request #{pr_name} does not have any member approvals."
    return
  end

  check_runs = GitHub.check_runs(pr: pr).fetch("check_runs")
  unless passed_ci?(check_runs)
    puts "CI status for pull request #{pr_name} is not successful."
    return
  end

  mergeable_state = pr.fetch("mergeable_state")
  if !["clean", "unknown"].include?(mergeable_state)
    puts "Pull request #{pr_name} is not mergeable (#{mergeable_state})."
    return
  end

  merge_method = determine_merge_method(pr)

  if ENV["GITHUB_REF"] != "refs/heads/master"
    puts "Would merge pull request #{pr_name} with #{merge_method} method."
    return
  end

  begin
    GitHub.merge_pull_request(
      repo,
      number: number, sha: sha,
      merge_method: merge_method
    )

    puts "Merged pull request #{pr_name} successfully with #{merge_method} method."
  rescue => e
    raise "Failed to merge pull request #{pr_name} with #{merge_method} method:\n#{e}" if last_try

    :retry
  end
end

def determine_merge_method(pr)
  commits = GitHub.open_api(pr.fetch("commits_url"))
  files = GitHub.open_api("#{pr.fetch("url")}/files")

  changed_files = pr.fetch("changed_files")

  only_casks = files.all? { |f| f.fetch("filename").start_with?("Casks/") }

  if only_casks
    return :squash if changed_files == 1
    return :rebase if files.count == commits.count
  end

  :squash
end

def passed_ci?(check_runs)
  return false if check_runs.empty?

  check_runs = Hash[
    check_runs.select { |check_run| check_run.fetch("status") == "completed" }
              .group_by { |check_run| check_run.fetch("name") }
              .map { |(k, v)| [k, v.max_by { |status| Time.parse(status.fetch("completed_at")) }] }
  ]

  check_runs.dig("conclusion", "conclusion") == "success"
end

def merge_pull_requests(prs)
  if prs.empty?
    puts "No pull requests found."
    return
  end

  queue = Queue.new

  prs.each do |pr|
    queue << [pr, 0]
  end

  failed = false

  until queue.empty?
    pr, tries = queue.deq

    repo   = pr.fetch("base").fetch("repo").fetch("full_name")
    number = pr.fetch("number")
    sha    = pr.fetch("head").fetch("sha")

    tap = Tap.fetch(repo)
    pr_name = "#{tap.name}##{number}"

    sleep 2**tries if tries.positive?

    begin
      tries += 1
      last_try = tries >= 5

      if merge_pull_request(pr_name, pr, repo: repo, number: number, sha: sha, last_try: last_try) == :retry
        queue.enq [pr, tries]
      end
    rescue => e
      puts "Error while processing #{pr_name}:"
      puts e
      puts e.backtrace
      failed = true
    end
  end

  exit 1 if failed
end

begin
  case event_name
  when "push", "schedule"
    prs = GitHub.pull_requests(repository, state: :open, base: "master")

    merge_pull_requests(prs)
  when "workflow_run"
    prs = find_pull_requests_for_workflow_run(event)

    merge_pull_requests(prs)
  when "workflow_dispatch"
    inputs = event.fetch("inputs")

    prs = if (pr_number = inputs["pull_request"])
      [GitHub.open_api("https://api.github.com/repos/#{repository}/pulls/#{pr_number}")]
    else
      GitHub.pull_requests(repository, state: :open, base: "master")
    end

    merge_pull_requests(prs)
  else
    raise "Unsupported GitHub Actions event: #{ENV["GITHUB_EVENT_NAME"].inspect}"
  end
end
