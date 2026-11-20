cask "teamwork-graph-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.4.6"
  sha256 arm:          "e95b9285a97f3d79a4ae1122264a43f72522740944de2dc8ff1b92376418926d",
         intel:        "81dfa7629841778d35879e83970c148022878fb51f9bea7d31605d35ab1f0cfb",
         arm64_linux:  "9acea0127e9bc12f8687da81434fe61e4578ae7dde556dde626d3ecaab45350c",
         x86_64_linux: "289e804ffae54fe958d0be3ea8374dc806a7e341d3cf34e5feca81ad0c1f41bf"

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
