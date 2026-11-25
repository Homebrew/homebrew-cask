cask "teamwork-graph-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.4.7"
  sha256 arm:          "f1ddf61bb0393235d40a4057b2c4237b35b2a8888a9e5c4bb2b166b23ac031dd",
         intel:        "5ca737df442cf8b9b66309a5bfbf05f1643e6d451cbedff9880f0061abc01be8",
         arm64_linux:  "84554cd6b6781a86e134f9b4c708fa6247817211df5a35716705b7326d040b74",
         x86_64_linux: "5cfb494b5bb5cd91e0ea0c212bfdf773ffd6c0e5bf9edb7636203540c1028c20"

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
