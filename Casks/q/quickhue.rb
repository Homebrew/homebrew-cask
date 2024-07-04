cask "quickhue" do
  version "1.3.3"
  sha256 :no_check

  url "https://github.com/danparsons/QuickHue/raw/master/QuickHue.zip"
  name "QuickHue"
  desc "Menu bar utility for controlling the Philips Hue lighting system"
  homepage "https://github.com/danparsons/QuickHue"

  deprecate! date: "2024-07-04", because: :discontinued

  app "QuickHue.app"

  zap trash: [
    "~/Library/Application Support/QuickHue",
    "~/Library/Caches/cat.moo.QuickHue",
    "~/Library/Preferences/cat.moo.QuickHue.plist",
  ]

  caveats do
    requires_rosetta
  end
end
