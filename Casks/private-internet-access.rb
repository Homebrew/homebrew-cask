cask 'private-internet-access' do
  version 'v71'
  sha256 '662317117024ef1e88cf142081f864dc386dfca76b75e3d5535f22720cebabd3'

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
