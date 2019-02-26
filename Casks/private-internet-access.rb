cask 'private-internet-access' do
  version '1.1-02537'
  sha256 '8f7b55e18ff94bcddaab4124c81cd1600b6c99fd85c19574ed09eaf938af8aea'

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  appcast 'https://www.privateinternetaccess.com/pages/download'
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
