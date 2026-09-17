cask "agentide" do
  version "0.9.5"
  sha256 "6fed46b4954bcb5a280c31c8b0c1df877519ca4aa2250f7300a2c2b386dd0b7c"

  url "https://github.com/MikeMcQuaid/AgentIDE/releases/download/#{version}/AgentIDE-#{version}.zip"
  name "AgentIDE"
  desc "IDE for agent-based development"
  homepage "https://github.com/MikeMcQuaid/AgentIDE"

  depends_on arch: :arm64
  depends_on formula: ["herdr", "ripgrep", "gh"]
  depends_on macos: :golden_gate

  app "AgentIDE.app"
  binary "#{appdir}/AgentIDE.app/Contents/Resources/bin/agentide"

  zap trash: [
    "~/.agentide",
    "~/Library/Application Support/AgentIDE",
    "~/Library/Application Support/CrashReporter/AgentIDE_*.plist",
    "~/Library/Caches/com.mikemcquaid.AgentIDE",
    "~/Library/HTTPStorages/com.mikemcquaid.AgentIDE*",
    "~/Library/Preferences/com.mikemcquaid.AgentIDE.plist",
    "~/Library/WebKit/com.mikemcquaid.AgentIDE",
  ]
end
