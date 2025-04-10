cask "slack-cli" do
  version "3.0.4"
  sha256 "c2b1e0f78f49cfab7bba15e79156df8205620f15a9e74e6d0d2a5cce9d16bd45"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://api.slack.com/future/tools/cli"

  livecheck do
    url "https://api.slack.com/slackcli/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
  caveats do
    requires_rosetta
  end
end
