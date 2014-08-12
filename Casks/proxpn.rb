class Proxpn < Cask
  version 'latest'
  sha256 :no_check

  url 'https://proxpn.com/mac.dmg'
  appcast 'http://www.proxpn.org/updater/appcast.rss'
  homepage 'http://proxpn.com'

  link 'ProXPN.app'
end
