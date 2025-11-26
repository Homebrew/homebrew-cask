cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.2"
  sha256 arm:   "29c9ab79e9b17aad24bf23fcc572bc2ea819d70c0831764f17e751deb279acdc",
         intel: "1a98f502fca39703cfaae63aa17150c7af720fa0f1bbe9cc6584acc665630b81"

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
