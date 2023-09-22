cask "slack-cli" do
  version "2.9.1"
  sha256 "b43f8f254296dd75b670a296a891851a5c4b3862fe42e03045597ba67c5d2148"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://api.slack.com/future/tools/cli"

  livecheck do
    url "https://api.slack.com/future/changelog"
    regex(%r{h2.*?v?(\d+(?:\.\d+)+).*?/h2}i)
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
