cask "script-debugger" do
  version "8.0.10-8A88"
  sha256 "4146e6ef549f3af64c50055f911fc0b3a0ab9dc9f12d181d4cf553b1243c4b53"

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
