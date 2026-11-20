cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.14.0"
  sha256 arm:          "b93806166c66cefa8cb3c8142cf1fa97888f47fce439f83676a8a8091bd4fedc",
         intel:        "21e69beee1b452d6897c14d906257ddc85a49f560cd1b4ec19582067fb380375",
         x86_64_linux: "180a564df41ba1de5c98f62b5470ea101e83ba6eae46dfdbf231b10ff42e66d4"

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
