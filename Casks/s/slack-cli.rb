cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.8.0"
  sha256 arm:          "56bae70638ce8fba568423fa408ab2e3da095bcef82d07904ff191535db415c5",
         intel:        "7c00a576e571e291ffb25710ecb6ffa7733455682eb879acd4f40812285fc55b",
         x86_64_linux: "533ebc242561a79c6aaf238c3417ce113d1257ace80cf90f1e5f852d8ec9ca7b"

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
