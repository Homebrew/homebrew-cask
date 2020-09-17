cask "ibettercharge" do
  version "1.0.12,1568119585"
  sha256 "33de59c5a1157b23f9313348ef60e213200d007e2b16c4f53859ddcb4c66d696"

  # devmate.com/com.softorino.iBetterCharge/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iBetterCharge/#{version.before_comma}/#{version.after_comma}/iBetterCharge-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.iBetterCharge.xml"
  name "iBetterCharge"
  desc "Battery level monitoring software"
  homepage "https://softorino.com/ibettercharge/"

  app "iBetterCharge.app"
end
