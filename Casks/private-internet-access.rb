cask 'private-internet-access' do
  version '79'
  sha256 'fc91f9777d9707c5a764c76024275fee313035572039d66d8ac123d10500615c'

  url "https://installers.privateinternetaccess.com/download/pia-v#{version}-installer-mac.dmg"
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap trash: '~/.pia_manager'
end
