cask "slack-cli" do
  version "2.12.0"
  sha256 "40ea59d2376665fd93acee047e9decc0bc1defb761df6078a02dde60821ce33c"

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
