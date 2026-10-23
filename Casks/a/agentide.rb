cask "agentide" do
  version "0.9.12"
  sha256 "126f72a39be2be5fe38188fd656b2b5cfabce38bc4f34c0a6b4949f59298057c"

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
