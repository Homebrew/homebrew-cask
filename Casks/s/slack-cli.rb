cask "slack-cli" do
  version "2.18.0"
  sha256 "12ba88987613f5b415061702e8a92fb79a13f23b0c6575a826c174334d79bba0"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://api.slack.com/future/tools/cli"

  livecheck do
    url "https://api.slack.com/automation/changelog"
    regex(%r{h2.*?v?(\d+(?:\.\d+)+).*?/h2}i)
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
