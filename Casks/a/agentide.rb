cask "agentide" do
  version "0.9.8"
  sha256 "0206daaf67fc983e227da158488cd3829ea49c00de3e290c45b1273aae1aa6fa"

  url "https://github.com/MikeMcQuaid/AgentIDE/releases/download/#{version}/AgentIDE-#{version}.zip"
  name "AgentIDE"
  desc "IDE for agent-based development"
  homepage "https://github.com/MikeMcQuaid/AgentIDE"

  depends_on arch: :arm64
  depends_on formula: ["herdr", "ripgrep", "gh"]
  depends_on macos: :tahoe

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
