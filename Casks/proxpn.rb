cask :v1 => 'proxpn' do
  version :latest
  sha256 :no_check

  url 'https://proxpn.com/mac.dmg'
  appcast 'http://www.proxpn.org/updater/appcast.rss'
  homepage 'http://proxpn.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ProXPN.app'
end
