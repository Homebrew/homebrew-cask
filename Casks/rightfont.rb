cask 'rightfont' do
  version '5.6.0'
  sha256 'bdc3463e8f20990a59f35eef2d20afd28dbe3c75e0e2027f30b2a6e26bff6d05'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
