cask 'private-internet-access' do
  version '1.3.2-02865'
  sha256 '1b53e9d52f56e5047ed86138d4620d7e5f2a3ab5be9b00e4bf98a9ef52205170'

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  appcast 'https://www.privateinternetaccess.com/pages/download'
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap trash: '~/.pia_manager'
end
