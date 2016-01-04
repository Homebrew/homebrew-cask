cask 'mouse-locator' do
  version :latest
  sha256 :no_check

  url 'http://www.2point5fish.com/files/MouseLocator.dmg'
  name 'Mouse Locator'
  homepage 'http://www.2point5fish.com/index.html'
  license :gratis

  prefpane "Mouse Locator v#{version} Installer.app/Contents/Resources/Distribution/MouseLocator.prefPane"
end
