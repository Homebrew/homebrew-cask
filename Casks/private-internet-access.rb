cask 'private-internet-access' do
  version '82'
  sha256 'e849df3ef9c7114b3b163ad5a3183ee9f55f37dc89089c2f4ca92c16cd758f5d'

  url "https://installers.privateinternetaccess.com/download/pia-v#{version}-installer-mac.dmg"
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'

  depends_on macos: '>= :yosemite'

  installer manual: 'Private Internet Access Installer.app'

  postflight do
    set_ownership '~/.pia_manager'
  end

  uninstall delete: '/Applications/Private Internet Access.app'

  zap trash: '~/.pia_manager'
end
