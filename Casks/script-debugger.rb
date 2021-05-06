cask "script-debugger" do
  version "8.0,8A32"
  sha256 "14ab79bd3f6792d19ce6e5244b047b5d7796429900dbe068405a59f0cf2d2838"

  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/latenightsw.com/"
  name "Script Debugger"
  desc "Integrated development environment focused entirely on AppleScript"
  homepage "https://latenightsw.com/"

  livecheck do
    url "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Script Debugger.app"

  zap trash: [
    "~/Library/Application Support/Script Debugger #{version.major}",
    "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
    "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
  ]
end
