cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macOS", linux: "linux"

  version "3.15.0"

  on_macos do
    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz",
        verified: "downloads.slack-edge.com/"
    sha256 arm:   "2c84c1d01b76cc7638425c9e16d3f442e3c0fea6302c0969a3f2ea8a01c3f2b1",
           intel: "9543a36572a62d8df16cc9db2adc7543cfcfd3192a29d55205810dac654a8806"
  end

  on_linux do
    sha256 "445136490e145c444aee6f80a88f83a5b417a29bb911f985ed6afd56c19eba07"

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
