cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.0"
  sha256 arm:   "f4b322ca33b5c4922969ce95d26124ec255a947a77a6f630af2b1f502c323082",
         intel: "2ae60a438eaa4e04272bbf98008b8ef876ad9d49e4b41812e675714bf73f569a"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_#{arch}.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://docs.slack.dev/tools/slack-cli/"

  livecheck do
    url "https://api.slack.com/slackcli/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  binary "bin/slack"

  # No zap stanza required
end
