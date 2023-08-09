cask "script-debugger" do
  version "8.0.6-8A69"
  sha256 "09cf3d3bf36ee8e1974655dbfce26b6852bab2a0bd041e7ced870146288b2609"

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
