cask "mouse-locator" do
  version "1.1"
  sha256 "1809760210e5afb80f9be34dc930c0c6fb84efee91747640d2d9717561149645"

  url "https://www.2point5fish.com/files/MouseLocator.dmg"
  appcast "https://www.2point5fish.com/index.html"
  name "Mouse Locator"
  homepage "https://www.2point5fish.com/index.html"

  prefpane "Mouse Locator v#{version} Installer.app/Contents/Resources/Distribution/MouseLocator.prefPane"
end
