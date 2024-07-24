cask "slack-cli" do
  version "2.27.1"
  sha256 "7fbd080f8056dae014941bf885f4406a7727b68206b449a4fbc169e8f2a5bd47"

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
