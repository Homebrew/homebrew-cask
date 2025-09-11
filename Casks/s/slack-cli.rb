cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.7.0"
  sha256 arm:   "b291c8f12f3e0498e8dd1b377d77cb00fbd87de04a4adef73addf25e7dddb181",
         intel: "cf28670a6a66bc74b88133f9dc1135c9b8cbccadf8bdcedf3da2462901a2cb26"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_#{arch}.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://docs.slack.dev/tools/slack-cli/"

  livecheck do
    url "https://api.slack.com/slackcli/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  binary "bin/slack"

  # No zap stanza required
end
