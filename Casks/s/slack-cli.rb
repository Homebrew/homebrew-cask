cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.0"
  sha256 arm:   "9da2fd6f555ef993d3ffdb1c3066798c34533422b3f39f9726a24c5e4f5669e7",
         intel: "6851912ee2d856a973d49c05b9bc9a717776267be70722956f78240b08901c1d"

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
