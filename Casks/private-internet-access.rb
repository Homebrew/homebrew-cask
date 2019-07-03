cask 'private-internet-access' do
  version '1.3-02842'
  sha256 '78731b2daf7c5ab72cffe294ea331c6c7577482548b59a94f3241a2b740b84af'

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
