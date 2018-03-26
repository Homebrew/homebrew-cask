cask 'private-internet-access' do
  version '78'
  sha256 '467927fb7cbcccf6f3d8f27b4e98c13c7f15b977c585a336d33347d7a95e5c2d'

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
