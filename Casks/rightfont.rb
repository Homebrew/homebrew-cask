cask 'rightfont' do
  version '5.8.0'
  sha256 'c16b63dd775e2e85d60f905eee5ec93b1e02033c551c56a38c827bd78883e1f3'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
