cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.11.0"
  sha256 arm:          "d66049692424b1e91014df792b38000709c5361429e3f17f53e64720d8aeabbc",
         intel:        "9a7520bbba68f9943e010e3e1cb7375fab0b4935b4edc5aa4bcd87cd0402e1de",
         x86_64_linux: "faebd25d8d27513b95aaabbfda3b73f80c7059c01a53bde65dcf2e9ba6f89afb"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_#{os}_#{arch}.tar.gz"
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
