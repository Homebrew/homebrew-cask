cask "slack-cli" do
  arch arm: "arm64", intel: on_system_conditional(macos: "amd64", linux: "64-bit")
  os macos: "macOS", linux: "linux"

  version "4.6.0"

  on_macos do
    sha256 arm:   "c1586ad5625a31d802abb31aa4b023bd12fe3c794221aaf17f6814aaa321a792",
           intel: "057362f3e1e2753a410f4868ae832f7e715665a46ae0cdccc3c2b78b2faef7df"
  end
  on_linux do
    sha256 "2863e7721af346caef72be7dc3be2a520db7207de08a440d040a6ec1378baeca"

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
