cask 'rightfont' do
  version '5.4.1'
  sha256 '4e2420d5d4473a0394400fd7a2715f8ff43967910748d8dcb4ac153516a1e812'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
