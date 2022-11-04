cask "slack-cli" do
  version "1.15.0"
  sha256 "db09e378a3f5ea07256b2d7bab6782e6d2fde31b111ded6b563825abd864400c"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://api.slack.com/future/tools/cli"

  livecheck do
    url "https://api.slack.com/future/tools/cli"
    regex(/href=.*?slack_cli_(\d+\.\d+\.\d+)_macOS_64-bit.tar.gz/)
  end

  depends_on formula: "deno"

  binary "bin/slack"
end
