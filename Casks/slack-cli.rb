cask "slack-cli" do
  version "1.16.4"
  sha256 "f52e297f3c9b6378aabf42c460c978637ccfce05420b0cdf4cb2aaa3134ab78a"

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
