cask "agent-cli" do
  version "0.108.0"
  sha256 "671f60dfc79f9467a6bc37d1ea0c013c5bfa30e94fde9c0d51017f26d87e5c13"

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
              executable: "/bin/sh",
              args:       ["-c", <<~SH, "--", "#{appdir}/AgentCLI.app/Contents/Resources/bin/uv"],
                plist="$HOME/Library/LaunchAgents/com.agent_cli.whisper.plist"
                owner=$(/usr/libexec/PlistBuddy -c 'Print :EnvironmentVariables:AGENTCLI_BUNDLED_UV' "$plist" 2>/dev/null) || exit 0
                [ "$owner" = "$1" ] || exit 0
                service="gui/$(/usr/bin/id -u)/com.agent_cli.whisper"
                if /bin/launchctl print "$service" >/dev/null 2>&1; then
                  /bin/launchctl bootout "$service" || exit $?
                fi
                /bin/rm -f "$plist"
              SH
            }

  zap trash: [
    "~/Library/Application Support/AgentCLI",
    "~/Library/Preferences/lt.nijho.agent-cli.menubar.plist",
  ]
end
