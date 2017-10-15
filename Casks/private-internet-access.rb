cask 'private-internet-access' do
  version '73'
  sha256 'cdf313e9326e8abc32ed2a3c2488c306a06b8122c6e76318aea2290f5aa99865'

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
