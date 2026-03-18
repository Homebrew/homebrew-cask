cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macOS", linux: "linux"

  version "3.14.0"

  on_macos do
    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz",
        verified: "downloads.slack-edge.com/"
    sha256 arm:   "f52829396dd6ecc875a026a6ab5944e8d2129ceef6ff9e534ae9e96e17a3e1c8",
           intel: "effdbe158444419de38923d44c3147982b1425c108b5ee604b0a504bf91b3f7e"
  end

  on_linux do
    sha256 "9f4bce2953a227208eb343ae098154a4489cb31a03dc73df05cb4ccb0270581d"

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
