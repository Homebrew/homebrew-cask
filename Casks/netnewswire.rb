class Netnewswire < Cask
  version '4.0.0-166'
  sha256 '94bbf93cc820be06f32fc80ff1ce065e5e5e219a0587fee948355a72140d05f3'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '1ad06240a769ed639d5c0e0a9a139ef498915f17e3d069c90f7d5555f9954034'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
