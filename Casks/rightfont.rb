cask 'rightfont' do
  version '3.1.3'
  sha256 '058f69d5d7e26bdeda0e7e1c2787cd2005b9e6369c6dc0c63002249ab5a8b306'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          checkpoint: '29075e8a2b23a95a6a5eade5181cea0fae4aa0f033f4f3c16987ef43dbbcbfae'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
