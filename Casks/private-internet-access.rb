cask 'private-internet-access' do
  version '1.2-02681'
  sha256 'ce67f1b5f99b428a4893c5f0ba889d72da824ea1bc15ec19ad3b97ff23bd810f'

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  appcast 'https://www.privateinternetaccess.com/pages/download'
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap trash: '~/.pia_manager'
end
