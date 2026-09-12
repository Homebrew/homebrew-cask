cask "agentide" do
  version "0.9.3"
  sha256 "aab66882019ade469c94406e40c3e455c476c4b38c5891d0134b4e672b06d0fa"

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
