cask "slack-cli" do
  version "2.25.0"
  sha256 "7a4d15b0d73732939230401eb0698dcbfe5da3dbd176a60fc87661c4f7d1113e"

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
