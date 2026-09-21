cask "agent-cli" do
  version "0.106.0"
  sha256 "f949e1488155cb1c06ccbef29d80ec9bd16cedc19f1380fb7febea951227a22f"

  url "https://github.com/basnijholt/agent-cli/releases/download/v#{version}/AgentCLI.dmg"
  name "Agent CLI"
  desc "Local-first AI voice and text tools with menu bar integration"
  homepage "https://github.com/basnijholt/agent-cli"

  livecheck do
    url "https://raw.githubusercontent.com/basnijholt/agent-cli/main/macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AgentCLI.app"

  uninstall quit: "lt.nijho.agent-cli.menubar"

  zap trash: [
    "~/Library/Application Support/AgentCLI",
    "~/Library/Preferences/lt.nijho.agent-cli.menubar.plist",
  ]
end
