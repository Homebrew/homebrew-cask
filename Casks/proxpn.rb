cask 'proxpn' do
  version '4.5.0.3'
  sha256 '099fa83105d363f0baa9d472b3f09b4d9d7ce8f9bc3ef73381fae7e3508d1f4b'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
