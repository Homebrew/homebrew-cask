cask "macrorecorder" do
  version "4.0.49"
  sha256 :no_check

  url "https://www.macrorecorder.com/MacroRecorderSetup.dmg"
  name "Macro Recorder"
  desc "Record mouse and keyboard actions"
  homepage "https://www.macrorecorder.com/"

  livecheck do
    url "https://www.macrorecorder.com/download/"
    regex(%r{changelog-mac/'>(\d+(?:\.\d+)+)</a>}i)
  end

  depends_on macos: ">= :big_sur"

  app "MacroRecorder.app"

  zap trash: "~/Library/Preferences/MacroRecorder.plist"

  caveats do
    license "https://www.bartelsmedia.com/terms/"
  end
end
