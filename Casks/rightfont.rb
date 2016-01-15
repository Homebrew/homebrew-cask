cask 'rightfont' do
  version '3.1.2'
  sha256 '9fa95692c90d939342b112b0c418193809102cd3dbd485c80744bd2cb2d3a57a'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :checkpoint => '4f13832abbcfb093eb6b48a4b7b43346d1a015a5cd48f65e6e2b711a226fbd3c'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
