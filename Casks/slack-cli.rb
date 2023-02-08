cask "slack-cli" do
  version "1.18.0"
  sha256 "810648ffbd853cef39c0b598e6e226b24bff83157fae861eaae9481369cb7ad2"

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
