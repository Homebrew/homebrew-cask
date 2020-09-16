cask "quickhue" do
  version :latest
  sha256 :no_check

  url "https://github.com/danparsons/QuickHue/raw/master/QuickHue.zip"
  name "QuickHue"
  desc "Menu bar utility for controlling the Philips Hue lighting system"
  homepage "https://github.com/danparsons/QuickHue"

  app "QuickHue.app"
end
