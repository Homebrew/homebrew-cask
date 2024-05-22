cask "quicktune" do
  version "7.0"
  sha256 :no_check

  url "https://marioaguzman.github.io/quicktune/updater/QuickTune.dmg"
  name "QuickTune"
  desc "QuickTime 7 style Apple Music controller"
  homepage "https://marioaguzman.github.io/quicktune/"

  livecheck do
    url "https://marioaguzman.github.io/quicktune/updater/quicktuneappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "QuickTune.app"

  zap trash: [
    "~/Library/Caches/com.marioaguzman.QuickTune",
    "~/Library/Preferences/com.marioaguzman.QuickTune.plist",
    "~/Library/Saved Application State/com.marioaguzman.QuickTune.savedState",
  ]
end
