cask "appium-for-mac" do
  version "0.4.1"
  sha256 "1d9c3ec36a306748d1ef58fd3d26c1717fb05bfa5fa6649b420452cb7719fe6b"

  url "https://github.com/appium/appium-for-mac/releases/download/v#{version}/AppiumForMac.zip"
  name "appium-for-mac"
  desc "This the app required to drive Native Mac Apps using Appium"
  homepage "https://github.com/appium/appium-for-mac"

  app "AppiumForMac.app"
end
