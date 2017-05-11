cask 'private-internet-access' do
  version 'v70'
  sha256 '0aa85a36735985b3d83c715f317f9adf16081d1c9bd7fb6c55afe118913470f1'

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
