cask "teamwork-graph-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.4.8"
  sha256 arm:          "5e0718e30af443e6c690670bc095519833f5757e9b6963d43d4d57c4f376fe35",
         intel:        "7499ef096718cb41b797c917d26030f07d359101d512cf51bad3d4f65cd03c0e",
         arm64_linux:  "b18d8162c55768d4056434a549b3720ca3c65f9d0597a1bc38749864dc0137b0",
         x86_64_linux: "a548fbe46f93dd8ff9038a416b606b1b56e13dbdffbdfc1b283ce0a81c413810"

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
