cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.9.0"
  sha256 arm:          "09a5fb8ef64a794a6ff2234eded18f9fa4fcdf20a0e9199eac4d3886fbdf7f7d",
         intel:        "bd7728b41f7c314f73aea9cd163ea71d878377b70f62b5222ff50e97b69c6667",
         x86_64_linux: "6fb005b3d49f02eacd281adcfccb446648dc784171d0e2b8e80bb648673d696a"

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
