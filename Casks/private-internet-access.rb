cask 'private-internet-access' do
  version '2.0.2-04704'
  sha256 'ad66bdbe68dbeeb7280b73436d1ebe8ff490cc1cb747c03fae4f700e5ca67d5e'

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
