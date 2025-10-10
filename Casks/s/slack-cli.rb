cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.8.1"
  sha256 arm:   "d897905cf3bc6f2c6c8c7e2ba0a8df84bb130c05493c6f9b4e7c905b1db51db7",
         intel: "5e1e3725ded92e60e8ad4edd9dda9ab282127b3c0187f31653a0fab41537a2c8"

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
