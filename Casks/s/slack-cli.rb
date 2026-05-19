cask "slack-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macOS", linux: "linux"

  version "4.1.0"

  on_macos do
    url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz",
        verified: "downloads.slack-edge.com/"
    sha256 arm:   "2fd06a44a6e44783af02ff2a38360efa8bff4c614dd31f7384b9f2f5aba84c29",
           intel: "4969dce6041028be6f1706c5db01929d96d8722508b843eac2608659152767e3"
  end

  on_linux do
    sha256 "0255984e7daf2abdfd28ae736c00eeef9b3458c81cbadede4948f2f2478fdef5"

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
