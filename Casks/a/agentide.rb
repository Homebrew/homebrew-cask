cask "agentide" do
  version "0.9.1"
  sha256 "1022585a73eb68518654eb9869ebd24bed8201e021ada56658baa5fd34fbebd3"

  url "https://github.com/MikeMcQuaid/AgentIDE/releases/download/#{version}/AgentIDE-#{version}.zip"
  name "AgentIDE"
  desc "IDE for agent-based development"
  homepage "https://github.com/MikeMcQuaid/AgentIDE"

  depends_on arch: :arm64
  depends_on macos: :golden_gate
  depends_on formula: ["herdr", "ripgrep", "gh"]

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
