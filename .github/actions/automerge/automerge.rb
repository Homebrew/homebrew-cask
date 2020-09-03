require "json"

Homebrew.install_gem! "git_diff"
require "git_diff"

require_relative "git_diff_extensions"
using GitDiffExtension

require "utils/github"

event_name, event_path, repository = ARGV

event = JSON.parse(File.read(event_path))

puts "ENV:"
puts ENV.to_h.sort_by { |k, | k }.select { |k,| k.start_with?("GITHUB_") }.map { |k, v| "#{k}=#{v}" }
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
    base: base_repo.fetch("default_branch"),
    head: "#{head_repo.fetch("owner").fetch("login")}:#{head_branch}",
    state: :open,
    sort: :updated,
    direction: :desc,
  ).select { |pr| pr.fetch("head").fetch("sha") == head_sha }
end

def diff_for_pull_request(pr)
  diff_url = pr.fetch("diff_url")

  output, _, status = curl_output("--location", diff_url)

  GitDiff.from_string(output) if status.success?
end

def merge_pull_request(pr, check_runs = GitHub.check_runs(pr: pr).fetch("check_runs"))
  repo   = pr.fetch("base").fetch("repo").fetch("full_name")
  number = pr.fetch("number")
  sha    = pr.fetch("head").fetch("sha")

  tap = Tap.fetch(repo)
  pr_name = "#{tap.name}##{number}"

  if pr.fetch("labels").any?
    puts "Pull request #{pr_name} has labels."
    return
  end

  reviews = GitHub.open_api("#{pr.fetch("url")}/reviews")
  if reviews.any?
    if !reviews.all? { |r| r.fetch("state") == "APPROVED" && r.fetch("author_association") == "MEMBER" }
      puts "Pull request #{pr_name} has non-approval reviews:"
      puts JSON.pretty_generate(reviews)
      return
    end
  else
    puts "Pull request #{pr_name} does not have any approvals."
    return
  end

  diff = diff_for_pull_request(pr)

  unless diff.simple?
    puts "Pull request #{pr_name} is not a “simple” version bump."
    return
  end

  unless passed_ci?(check_runs, diff.cask_name)
    puts "CI status for pull request #{pr_name} is not successful."
    return
  end

  if diff.version_changed?
    if diff.version_decreased?
      puts "Version in pull request #{pr_name} decreased from #{diff.old_version.inspect} to #{diff.new_version.inspect}."
      return
    end

    tap.install(full_clone: true) unless tap.installed?

    out, _ = system_command! 'git', args: ['-C', tap.path, 'log', '--pretty=format:', '-G', '\s+version\s+\'', '--follow', '--patch', '--', diff.cask_path]

    version_diff = GitDiff.from_string(out)
    previous_versions = version_diff.additions.select { |l| l.version? }.map { |l| l.version }.uniq

    if previous_versions.include?(diff.new_version)
      puts "Version in pull request #{pr_name} changed to a previous version. Previous versions were:\n#{previous_versions.join("\n")}"
      return
    end
  end

  if ENV["GITHUB_REF"] != 'refs/heads/master'
    puts "Would merge pull request #{pr_name}…"
    return
  end

  puts "Merging pull request #{pr_name}…"

  begin
    tries ||= 0

    GitHub.merge_pull_request(
      repo,
      number: number, sha: sha,
      merge_method: :squash,
    )

    puts "Pull request #{pr_name} merged successfully."
  rescue => e
    raise "Failed to merge pull request #{pr_name}:\n#{e}" if (tries += 1) > 3
    sleep 5
    retry
  end
end

def passed_ci?(check_runs, cask_name)
  return false if check_runs.empty?
  return false if cask_name.nil?

  check_runs = Hash[
    check_runs.select { |check_run| check_run.fetch("status") == "completed" }
              .group_by { |check_run| check_run.fetch("name") }
              .map { |(k, v)| [k, v.max_by { |status| Time.parse(status.fetch("completed_at")) }] }
  ]

  check_runs.all? { |_name, check_run| check_run["conclusion"] == "success" } &&
    (check_runs.dig("test (#{cask_name})", "conclusion") == "success") &&
    (check_runs.dig("conclusion", "conclusion") == "success")
end

def merge_pull_requests(prs)
  if prs.empty?
    puts "No pull requests found."
    return
  end

  failed_prs = []

  prs.each do |pr|
    begin
      merge_pull_request(pr)
    rescue => e
      repo   = pr.fetch("base").fetch("repo").fetch("full_name")
      number = pr.fetch("number")

      tap = Tap.fetch(repo)
      pr_name = "#{tap.name}##{number}"

      puts "Error while processing #{pr_name}:"
      puts e
      puts e.backtrace
      failed_prs << pr
    end
  end

  exit 1 if failed_prs.any?
end

begin
  case event_name
  when "push", "schedule"
    prs = GitHub.pull_requests(repository, state: :open, base: "master")

    merge_pull_requests(prs)
  when "workflow_run"
    prs = find_pull_requests_for_workflow_run(event)

    merge_pull_requests(prs)
  when "check_run"

  when "workflow_dispatch"
    inputs = event.fetch("inputs")

    prs = if pr_number = inputs["pull_request"]
      [GitHub.open_api("https://api.github.com/repos/#{repository}/pulls/#{pr_number}")]
    else
      GitHub.pull_requests(repository, state: :open, base: "master")
    end

    merge_pull_requests(prs)
  else
    raise "Unsupported GitHub Actions event: #{ENV["GITHUB_EVENT_NAME"].inspect}"
  end
end
