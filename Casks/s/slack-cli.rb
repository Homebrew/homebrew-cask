cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.1"
  sha256 arm:   "5560042d7b7dd04d4988eacb3ab7b2120bb953ecb50f3515b0164aa2aa027f64",
         intel: "a19b45752a8941a17b7addd4ecc3be790288cdace52ac18dfbd2e537b8ee4b74"

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_#{arch}.tar.gz",
      verified: "downloads.slack-edge.com/slack-cli/"
  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://tools.slack.dev/slack-cli/"

  livecheck do
    url "https://api.slack.com/slackcli/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  depends_on formula: "deno"

  binary "bin/slack"

  # No zap stanza required
end
