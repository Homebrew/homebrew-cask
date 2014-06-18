class Proxpn < Cask
  url 'https://proxpn.com/mac.dmg'
  appcast 'http://www.proxpn.org/updater/appcast.rss'
  homepage 'http://proxpn.com'
  version 'latest'
  sha256 :no_check
  link 'ProXPN.app'
end
