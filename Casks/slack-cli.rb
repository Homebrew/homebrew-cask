cask "slack-cli" do
  version "1.17.0"
  sha256 "f87cbc6868812dff0ead652bb49a7faa233bb5e36d9567d3bdb61e4634d28e7c"

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
