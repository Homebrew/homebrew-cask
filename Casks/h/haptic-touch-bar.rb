cask "haptic-touch-bar" do
  version "2.4.0,240,1540815050"
  sha256 "c7b044f1516bb0912e863e2e3a3fd080fa06833eaddc0f056caf55a5e9df94b5"

  url "https://dl.devmate.com/com.bopsoft.HapticTouchBar/#{version.csv.second}/#{version.csv.third}/HapticTouchBar-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.bopsoft.HapticTouchBar/"
  name "Haptic Touch Bar"
  desc "Add haptic feedback to Touch Bar buttons"
  homepage "https://www.haptictouchbar.com/"

  deprecate! date: "2025-03-30", because: :unmaintained

  depends_on macos: ">= :sierra"

  app "Haptic Touch Bar.app"

  uninstall quit: [
    "com.bopsoft.HapticTouchBar",
    "com.devmate.*",
    "com.gilt.cleanroom.CleanroomLogger",
    "com.paddle.Paddle",
    "org.sparkle-project.Sparkle.Autoupdate",
  ]

  zap trash: [
    "~/Library/Application Support/Haptic Touch Bar",
    "~/Library/Caches/com.bopsoft.HapticTouchBar",
    "~/Library/Cookies/com.bopsoft.HapticTouchBar.binarycookies",
    "~/Library/Preferences/com.bopsoft.HapticTouchBar.plist",
  ]

  caveats do
    requires_rosetta
  end
end
