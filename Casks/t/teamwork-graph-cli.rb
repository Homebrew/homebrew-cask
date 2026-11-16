cask "teamwork-graph-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.4.5"
  sha256 arm:          "95013443cdab0ec0a530c9ca4516f8d9fa9f95db5783d765b6505c4d6e9043cf",
         intel:        "b7c5aa011ac702e3d69b887705ae3290ae7b73ff42356f708c7e83bfca6b46be",
         arm64_linux:  "8b2e462e5f6efdcfd085207b2607b1f9d4d74d5bd72620f7778993e64ad2b4ac",
         x86_64_linux: "12cdcd49597ef7c2a7a4b0c8948bc708112fb5901ebce3e54983171b62405595"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://teamwork-graph.atlassian.com/cli/twg-#{os}-#{arch}-v#{version}"
  name "Teamwork Graph CLI"
  desc "Command-line interface for Atlassian Teamwork Graph"
  homepage "https://developer.atlassian.com/cloud/twg-cli"

  livecheck do
    url "https://teamwork-graph.atlassian.com/cli/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "twg-#{os}-#{arch}-v#{version}", target: "twg"
  generate_completions_from_executable "twg-#{os}-#{arch}-v#{version}", "completion", "script", base_name: "twg"

  uninstall launchctl: "com.atlassian.twg.upkeep"

  zap trash: [
    "~/.config/twg",
    "~/.twg",
    "~/Library/Caches/twg",
    "~/Library/LaunchAgents/com.atlassian.twg.upkeep.plist",
  ]
end
