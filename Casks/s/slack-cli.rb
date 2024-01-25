cask "slack-cli" do
  version "2.17.0"
  sha256 "97cb6343bf2a2e8a03dfdce389e27da1214081df391e86bbc27f5d9d17ecebeb"

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
