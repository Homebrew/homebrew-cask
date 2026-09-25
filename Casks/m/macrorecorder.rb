cask "macrorecorder" do
  version "5.0.40"
  sha256 :no_check

  url "https://www.macrorecorder.com/MacroRecorderSetup.dmg"
  name "Macro Recorder"
  desc "Record mouse and keyboard actions"
  homepage "https://www.macrorecorder.com/"

  livecheck do
    url "https://www.macrorecorder.com/download/"
    regex(%r{changelog-mac/'>(\d+(?:\.\d+)+)</a>}i)
  end

  depends_on :macos

  app "MacroRecorder.app"

  uninstall quit: "MacroRecorder"

  zap trash: "~/Library/Preferences/MacroRecorder.plist"

  caveats do
    license "https://www.bartelsmedia.com/terms/"
  end
end
