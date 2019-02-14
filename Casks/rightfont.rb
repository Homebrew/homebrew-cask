cask 'rightfont' do
  version '5.3.3'
  sha256 '4f13f3138d765bd0f4c5bff6a9b3bedd2878d6569a1c210b3bb67a8981f3df47'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
