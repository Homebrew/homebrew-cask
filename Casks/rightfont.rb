cask 'rightfont' do
  version '3.1.0'
  sha256 '6353937ff1d4a62f616ec6a83836d3db78f48d4fff609280ede7ebd451d5c569'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '561651befa2757a64e9f08aebd0313c16fd015678403921c06299490ef85a4ad'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
