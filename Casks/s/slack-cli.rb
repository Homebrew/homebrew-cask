cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macOS", linux: "linux"

  version "4.5.0"

  on_macos do
    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz",
        verified: "downloads.slack-edge.com/"
    sha256 arm:   "bc1a9933bd6376ee61a7220ac3da8cdf9696b650fb0f8ad52478a51f58f03131",
           intel: "5ed4bc27f20f279dacc9eac58f0ac51c889a766a1adfdd93b25aa8fc1de23b4a"
  end

  on_linux do
    sha256 "e393598b3175006f5d0c27fb87cc5e728111ae95dc67eed696f8c000e2a0a105"

    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_64-bit.tar.gz",
        verified: "downloads.slack-edge.com/"

    depends_on arch: :x86_64
  end

  name "Slack CLI"
  desc "CLI to create, run, and deploy Slack apps"
  homepage "https://docs.slack.dev/tools/slack-cli/"

  livecheck do
    url "https://docs.slack.dev/tools/metadata.json"
    strategy :json do |json|
      json.dig("slack-cli", "releases")&.map { |release| release["version"] }
    end
  end

  binary "bin/slack"

  zap trash: "~/.slack"
end
