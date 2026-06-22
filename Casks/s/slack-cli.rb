cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macOS", linux: "linux"

  version "4.3.0"

  on_macos do
    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz",
        verified: "downloads.slack-edge.com/"
    sha256 arm:   "6c5086dc4ff01b6f5a01ed2596d20d70b50ea8a17cb856d0abdd8f0c879de7aa",
           intel: "f73a7af4b98e613851e95a8ed4d39d070135b07656e5f4164e41524123acdb85"
  end

  on_linux do
    sha256 "4667daf35068a4c0900b2bf7bf94dbed205731c25b6c8ba7391c9ff9dd863478"

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
