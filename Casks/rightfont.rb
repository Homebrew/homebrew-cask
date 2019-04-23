cask 'rightfont' do
  version '5.5.0'
  sha256 'd4b4f86f11afce774668797882eac415aba61eea8aa9716e36e22e6f6efc8ed5'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
