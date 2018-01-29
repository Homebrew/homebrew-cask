cask 'private-internet-access' do
  version '76'
  sha256 '4901c30d79edfafc804a1e9e2438db1355c0d3bf26a8877ec533a95723623445'

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
