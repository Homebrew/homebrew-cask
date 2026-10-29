cask "sanductor" do
  # Fill these from the first signed Sanductor release before submitting.
  version "RELEASE_VERSION"
  sha256 "RELEASE_SHA256"

  url "https://github.com/MikeMcQuaid/Sanductor/releases/download/#{version}/Sanductor-#{version}.zip"
  name "Sanductor"
  desc "Native workspace for sandboxed coding agents"
  homepage "https://mikemcquaid.com/sanductor/"

  depends_on arch: :arm64
  depends_on formula: ["herdr", "ripgrep", "gh"]
  depends_on macos: :tahoe

  app "Sanductor.app"
  binary "#{appdir}/Sanductor.app/Contents/Resources/bin/sanductor"
  binary "#{appdir}/Sanductor.app/Contents/Resources/bin/agentide"

  zap trash: [
    "~/.agentide",
    "~/.sanductor",
    "~/Library/Application Support/AgentIDE",
    "~/Library/Application Support/CrashReporter/AgentIDE_*.plist",
    "~/Library/Application Support/CrashReporter/Sanductor_*.plist",
    "~/Library/Application Support/Sanductor",
    "~/Library/Caches/com.mikemcquaid.AgentIDE",
    "~/Library/Caches/com.mikemcquaid.Sanductor",
    "~/Library/HTTPStorages/com.mikemcquaid.AgentIDE*",
    "~/Library/HTTPStorages/com.mikemcquaid.Sanductor*",
    "~/Library/Preferences/com.mikemcquaid.AgentIDE.plist",
    "~/Library/Preferences/com.mikemcquaid.Sanductor.plist",
    "~/Library/WebKit/com.mikemcquaid.AgentIDE",
    "~/Library/WebKit/com.mikemcquaid.Sanductor",
  ]
end
