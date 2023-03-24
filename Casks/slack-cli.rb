cask "slack-cli" do
  version "1.21.0"
  sha256 "75ba2fab1bd2694337899f6376bf36a49d9613984ddb5c63fa2baa2fe5c45db6"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://api.slack.com/future/tools/cli"

  livecheck do
    url "https://api.slack.com/future/tools/cli"
    regex(/href=.*?slack[._-]cli[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]64[._-]bit\.tar\.gz/)
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
