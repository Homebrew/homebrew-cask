cask "slack-cli" do
  version "3.6.0"
  sha256 "a8842a36732a469e03e62d21e9f79ef68aad53a79eaf65679a569b248173815c"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
