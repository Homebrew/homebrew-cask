cask "slack-cli" do
  version "3.5.1"
  sha256 "d1941e8cd81042b79db2369c85883e5096ccb9863aaecd9336b1862bf5de6a29"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://tools.slack.dev/slack-cli/"

  livecheck do
    url "https://api.slack.com/slackcli/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
