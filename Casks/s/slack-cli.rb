cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.7.0"

  on_macos do
    sha256 arm:   "ccb6dc5910e06e8b12ff4d9690d015b72f8a81249ea716e8829dddddfd39d404",
           intel: "8a66be49be2e23cb19a08dc58fb1d7695eaad9b649556ea9a06a3f7c9b5142dc"
  end
  on_linux do
    sha256 "9d06c481bca07c1afffd106462e5ad3a8748334eb3b09aba3911a557673b5429"

    depends_on arch: :x86_64
  end

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://docs.slack.dev/tools/slack-cli/"

  livecheck do
    url "https://docs.slack.dev/tools/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  binary "bin/slack"

  zap trash: "~/.slack"
end
