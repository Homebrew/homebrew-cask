cask "script-debugger" do
  version "8.0.2-8A39"
  sha256 "8751ec967918d809ee7796c87ecbbb2a446346d7f867041b47a1312bab62ffaf"

  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg",
      verified: "s3.amazonaws.com/latenightsw.com/"
  name "Script Debugger"
  desc "Integrated development environment focused entirely on AppleScript"
  homepage "https://latenightsw.com/"

  livecheck do
    url "https://latenightsw.com/download/"
    regex(%r{action=.*?/ScriptDebugger(\d+(?:\.\d+)*-\d+A\d+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Script Debugger.app"

  zap trash: [
    "~/Library/Application Support/Script Debugger #{version.major}",
    "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
    "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
  ]
end
