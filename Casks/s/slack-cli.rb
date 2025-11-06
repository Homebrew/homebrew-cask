cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.1"
  sha256 arm:   "bb0980930f2fd129443966e76298b8963d01a684fb60f8f8b508435a1a3780d4",
         intel: "b2de93d1f2687ba4b6b668f70597c13f3f8f41c9b5f84f42274719db95dca3c6"

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
