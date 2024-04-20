cask "script-debugger" do
  version "8.0.7-8A77"
  sha256 "3b2df86a1c479c9012eefbe086966f1af847f051d01be5974c0c196bb922cc27"

  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg",
      verified: "s3.amazonaws.com/latenightsw.com/"
  name "Script Debugger"
  desc "Integrated development environment focused entirely on AppleScript"
  homepage "https://latenightsw.com/"

  livecheck do
    url "https://latenightsw.com/download/"
    regex(/action=.*?ScriptDebugger(\d+(?:\.\d+)+-\d+A\d+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Script Debugger.app"

  zap trash: [
    "~/Library/Application Support/Script Debugger #{version.major}",
    "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
    "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
  ]
end
