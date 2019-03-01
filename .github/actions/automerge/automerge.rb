require "json"

Homebrew.install_gem! "git_diff"
require "git_diff"
require_relative "git_diff_extensions"
using GitDiffExtension

require "utils/github"

ENV["GITHUB_ACTION"]     = ENV.delete("HOMEBREW_GITHUB_ACTION")
ENV["GITHUB_ACTOR"]      = ENV.delete("HOMEBREW_GITHUB_ACTOR")
ENV["GITHUB_EVENT_NAME"] = ENV.delete("HOMEBREW_GITHUB_EVENT_NAME")
ENV["GITHUB_EVENT_PATH"] = ENV.delete("HOMEBREW_GITHUB_EVENT_PATH")
ENV["GITHUB_REPOSITORY"] = ENV.delete("HOMEBREW_GITHUB_REPOSITORY")
ENV["GITHUB_SHA"]        = ENV.delete("HOMEBREW_GITHUB_SHA")
ENV["GITHUB_WORKFLOW"]   = ENV.delete("HOMEBREW_GITHUB_WORKFLOW")
ENV["GITHUB_WORKSPACE"]  = ENV.delete("HOMEBREW_GITHUB_WORKSPACE")

class NeutralSystemExit < SystemExit
  def initialize(message)
    super(78, message)
  end
end

def skip(message = nil)
  $stderr.puts message unless message.nil?
  raise NeutralSystemExit.new(message)
end

$stdout.sync = true
$stderr.sync = true

event = JSON.parse(File.read(ENV.fetch("GITHUB_EVENT_PATH")))

puts "ENV:"
puts ENV.to_h.sort_by { |k, | k }.select { |k,| k.start_with?("GITHUB_") }.map { |k, v| "#{k}=#{v}" }
puts

puts "EVENT:"
puts JSON.pretty_generate(event)
puts

def find_pull_request_for_status(event)
  repo = event.fetch("repository").fetch("full_name")

  branch = event.fetch("branches").find { |branch| branch.fetch("commit").fetch("sha") == event.fetch("commit").fetch("sha") }

  skip "Status does not match commit." unless branch

  /https:\/\/api.github.com\/repos\/(?<pr_author>[^\/]+)\// =~ branch.fetch("commit").fetch("url")

  GitHub.pull_requests(
    repo,
    base: "#{event.fetch("repository").fetch("default_branch")}",
    head: "#{pr_author}:#{branch.fetch("name")}",
    state: :open,
    sort: :updated,
    direction: :desc,
  ).find { |pr| pr.fetch("head").fetch("sha") == event.fetch("commit").fetch("sha") }
end

def diff_for_pull_request(pr)
  diff_url = pr.fetch("diff_url")

  output, _, status = curl_output("--location", diff_url)

  GitDiff.from_string(output) if status.success?
end

def merge_pull_request(pr, statuses = GitHub.open_api(pr.fetch("statuses_url")))
  repo   = pr.fetch("base").fetch("repo").fetch("full_name")
  number = pr.fetch("number")
  sha    = pr.fetch("head").fetch("sha")

  tap = Tap.fetch(repo)
  pr_name = "#{tap.name}##{number}"

  skip "CI status for pull request #{pr_name} is not successful." unless passed_ci?(statuses)

  diff = diff_for_pull_request(pr)
  skip "Pull request #{pr_name} is not a “simple” version bump." unless diff.simple?

  if diff.version_changed?
    if diff.version_decreased?
      skip "Version in pull request #{pr_name} decreased from #{diff.old_version.inspect} to #{diff.new_version.inspect}."
    end

    tap.install(full_clone: true) unless tap.installed?

    cask_path = diff.files.first.a_path

    out, _ = system_command! 'git', args: ['-C', tap.path, 'log', '--pretty=format:', '-G', '\s+version\s+\'', '--follow', '-p', '--', cask_path]

    version_diff = GitDiff.from_string(out)
    previous_versions = version_diff.additions.select(&:version?).map(&:version).uniq

    if previous_versions.include?(diff.new_version)
      skip "Version in pull request #{pr_name} changed to a previous version. Previous versions were:\n#{previous_versions.join("\n")}"
    end
  end

  puts "Merging pull request #{pr_name}…"

  begin
    tries ||= 0

    # GitHub.merge_pull_request(
    #   repo,
    #   number: number, sha: sha,
    #   merge_method: :squash,
    # )
    puts "Pull request #{pr_name} merged successfully."
  rescue => e
    raise "Failed to merge pull request #{pr_name}:\n#{e}" if (tries += 1) > 3
    sleep 5
    retry
  end
end

def passed_ci?(statuses = [])
  statuses = Hash[
    statuses.group_by { |status| status.fetch("context") }
            .map { |(k, v)| [k, v.max_by { |status| Time.parse(status.fetch("updated_at")) }] }
  ]

  statuses.dig("continuous-integration/travis-ci/pr", "state") == "success"
end

CASK_REPOS = [
  "Homebrew/homebrew-cask",
  "Homebrew/homebrew-cask-drivers",
  "Homebrew/homebrew-cask-fonts",
  "Homebrew/homebrew-cask-versions",
].freeze

 ENV["GITHUB_EVENT_NAME"] = "push"
begin
  case ENV["GITHUB_EVENT_NAME"]
  when "status"
    status = event

    pr = find_pull_request_for_status(status)
    skip "No matching pull request found." unless pr
    merge_pull_request(pr, [status])
  when "issue_comment", "pull_request", "pull_request_review", "pull_request_review_comment", "push"
    prs = CASK_REPOS.flat_map { |repo| GitHub.pull_requests(repo, state: :open, base: "master") }

    skip "No open pull requests found." if prs.empty?

    merged_prs = []
    failed_prs = []
    skipped_prs = []

    prs.each do |pr|
      begin
        merge_pull_request(pr)
        merged_prs << pr
      rescue NeutralSystemExit => e
        skipped_prs << pr
      rescue => e
        $stderr.puts e
        failed_prs << pr
      end
    end

    if (merged_prs + failed_prs).empty? && skipped_prs.any?
      skip
    elsif failed_prs.any?
      exit 1
    end
  else
    skip "Unsupported GitHub Actions event."
  end
end
