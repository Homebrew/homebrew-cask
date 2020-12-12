cask "script-debugger" do
  version "7.0.12-7A112"
  sha256 "3be99ccffadebf5d876cfd0dddc5f81bd4ae36c93f1913a633c0bb36fbfa41c9"

  # s3.amazonaws.com/latenightsw.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php"
  name "Script Debugger"
  homepage "https://latenightsw.com/"

  app "Script Debugger.app"

  zap trash: [
    "~/Library/Application Support/Script Debugger #{version.major}",
    "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
    "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
  ]
end
