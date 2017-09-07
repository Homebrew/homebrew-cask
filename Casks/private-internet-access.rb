cask 'private-internet-access' do
  version 'v72'
  sha256 '08c3e965d40351a81be0d36a1cb6570b39ada54ddad80e5833ca1fc0fd9a87b1'

  url "https://installers.privateinternetaccess.com/download/pia-#{version}-installer-mac.dmg"
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap       delete: '~/.pia_manager'
end
