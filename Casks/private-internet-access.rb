cask 'private-internet-access' do
  version '77'
  sha256 '7a31b46d03c1d59a1fd420ade299d329141e75212ab76c62453a8a1ac7e946c5'

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
