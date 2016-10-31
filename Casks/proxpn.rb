cask 'proxpn' do
  version '4.3.6.6'
  sha256 'dcb62b781b84a2dabfe77fb4e3a00e00cddf07ecc7ff5c5fcbedd12d86beb8c2'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: '0e4f4aef85ffe583d9fe32124aa0d8f2ede276b5095b5b961a21039643996e54'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
