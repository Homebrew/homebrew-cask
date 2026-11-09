cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.13.0"
  sha256 arm:          "ff9c8f85396c0bb0caf0928fddb6636cdd79dbdaf1a8b51ab729d67de3d151c3",
         intel:        "4bd41eec101e320bd400e506bb50d1b02476af624aa06aad9d97c1bfdcdf1023",
         x86_64_linux: "2a1cb67b49649f85ec0da6fc4cb1d74a702dfb9e12088c8301776a69b0a8f072"

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
