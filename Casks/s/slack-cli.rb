cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.8.0"
  sha256 arm:   "9ad2bbb5151a49070daf3d5a80d3cc93d4fc10a31c568899b0d5c8578689d2b9",
         intel: "aae93c01ea9af5656772402823e91ce80e190060f521c8cded4b3750f7f8552e"

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
