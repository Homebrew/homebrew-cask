cask 'private-internet-access' do
  version '80'
  sha256 '7f46738910c38cdc6de5dfb18e417a26b1b5f245b9312a122e9ad38b75bd9403'

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
