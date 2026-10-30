cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.12.0"
  sha256 arm:          "23a5001854d2bb283ded8ad941cff13d4b2573ba922233087609b70ce53e4b6d",
         intel:        "838aa81d10f82e5e9212800d084924ac66e5807aecaac16ae747c90d985352a2",
         x86_64_linux: "8b93b0ff3a30879b5ef09fe01fb3bc457afb368bb26827b526f101eccce96c76"

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
