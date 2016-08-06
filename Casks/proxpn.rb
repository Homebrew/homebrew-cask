cask 'proxpn' do
  version '4.3.6.2'
  sha256 '5f4bf12371ccdf694a222ec8d966f6796e8d93a484934e674798385d60891370'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: 'ec65d9d281487212b1aba6ff55e4ec7802dff549d692941fb2f81a996b8485ab'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'
  license :freemium

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
