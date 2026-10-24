cask "agent-cli" do
  version "0.108.3"
  sha256 "85819162d5f79ea26fa4d9d836fd28dc3eb045d58d38f385d9cd75562e5d10c3"

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

  uninstall quit:   "lt.nijho.agent-cli.menubar",
            script: {
              executable: "#{appdir}/AgentCLI.app/Contents/Resources/uninstall.sh",
              sudo:       false,
            }

  zap trash: [
    "~/Library/Application Support/AgentCLI",
    "~/Library/Preferences/lt.nijho.agent-cli.menubar.plist",
  ]
end
