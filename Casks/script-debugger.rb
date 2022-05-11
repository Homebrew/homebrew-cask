cask "script-debugger" do
  version "8.0.4-8A52"
  sha256 "1f0b33fa80da72dad060a38807729a03b03c1bcd81e029d7f36c9617896e50e6"

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
