cask 'mouse-locator' do
  version '1.1'
  sha256 '1809760210e5afb80f9be34dc930c0c6fb84efee91747640d2d9717561149645'

  url 'http://www.2point5fish.com/files/MouseLocator.dmg'
  name 'Mouse Locator'
  homepage 'http://www.2point5fish.com/index.html'
  license :gratis

  # Technically 'Mouse Locator v1.1 Installer.app' has to be manually installed
  # but all it does is copy a preference file. Automating the process instead
  prefpane 'Mouse Locator v1.1 Installer.app/Contents/Resources/Distribution/MouseLocator.prefPane'
  
  # Ordinarliy, we'd run the same app in manual mode and have the user press 
  # the "Uninstall" button. Remove the preference pane instead
  zap :delete ~/Library/PreferencePanes/MouseLocator.prefPane
  
end
