cask :v1 => 'rightfont' do
  version '1.1.0'
  sha256 '082ea61f0a798a45b66f84eaeaa7e40372b8ca0f042c91ccaf9a391a8914f607'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '1b322e38363e6874a9664c670a6d892629c35a07ac39e65f983873d881df9188'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
