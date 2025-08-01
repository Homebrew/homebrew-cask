cask "slack-cli" do
  version "3.5.2"
  sha256 "1219def9e39f4ac125dea50434bfe6c83f3fee2aa9fdc4c17e077dbd90a2cb82"

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

  disable! date: "2026-09-01", because: :unsigned

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
