cask 'private-internet-access' do
  version '74'
  sha256 'f5d86132dca72b1cfae13ca84d9322e5c8402c12aab44f8089bb7be8aa927fc3'

  url "https://installers.privateinternetaccess.com/download/pia-v#{version}-installer-mac.dmg"
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap delete: '~/.pia_manager'
end
