cask "script-debugger" do
  version "7.0.13,7A125"
  sha256 "ff39872c7a9bc3926abb2d4f476bd6ade1db094491889b40e433726461d030c0"

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
