cask 'proxpn' do
  version '4.4.2.3'
  sha256 '66d1abf1c285706da9170139fe5f573b8461bef24690bb2383991f5c2ee9ffa9'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: '46d37714ca2eded9491f53aa20c41dcd39c9cd6179b02753f55f6489b3efb0cd'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
