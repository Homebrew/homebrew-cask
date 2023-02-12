cask "slack-cli" do
  version "1.19.0"
  sha256 "c7a2d553a22f1d0476e29551202e9eccf00d8b1a751dd1bbebc635bbc5d7d65f"

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
