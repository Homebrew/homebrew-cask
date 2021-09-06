cask "mouse-locator" do
  version "1.1"
  sha256 :no_check

  url "https://www.2point5fish.com/files/MouseLocator.dmg"
  appcast "https://www.2point5fish.com/index.html"
  name "Mouse Locator"
  homepage "https://www.2point5fish.com/index.html"

  prefpane "Mouse Locator v#{version} Installer.app/Contents/Resources/Distribution/MouseLocator.prefPane"
end
