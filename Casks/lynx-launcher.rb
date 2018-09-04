cask 'lynx-launcher' do
  version :latest
  sha256 :no_check

  url 'http://download.saharasupport.com/lynxlauncher2/production/macx/LynxLauncher.pkg'
  name 'Lynx Launcher by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  pkg 'LynxLauncher.pkg'

  uninstall delete: '/Applications/Lynx Launcher.app'
end
