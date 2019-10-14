cask 'private-internet-access' do
  version '1.5.1-03605'
  sha256 'd2ca894660fc7ae012ddc14dd7720d46e20dca05445a58e1d446b29dfd9ceac8'

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
