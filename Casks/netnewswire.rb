cask :v1 => 'netnewswire' do
  version '4.0.0-166'
  sha256 '94bbf93cc820be06f32fc80ff1ce065e5e5e219a0587fee948355a72140d05f3'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '33564e80110c0e5bc562bf65f09046d95afcbab79d0e9c49617c2b8548a64cc2'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
