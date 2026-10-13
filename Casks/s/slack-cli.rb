cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.10.0"
  sha256 arm:          "0f897eee17ce549ba1f34c389c2591c32c191ce94eea15cd4b92053d8f35c80a",
         intel:        "1ae1db7c4da5e861e24ee4c0f09965829d0f7508a080f87692193678549b5895",
         x86_64_linux: "9772b17f70c4ec522ea6ae25545220dfe17d6afb5babe28fa1cd55a24b2abffa"

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
