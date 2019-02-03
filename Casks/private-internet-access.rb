cask 'private-internet-access' do
  version '1.0.1-02349'
  sha256 '59c3a8ad7661cb86c2b9b3f0b9d2994031493cc30fbe454d970d1c8edfb74926'

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
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
