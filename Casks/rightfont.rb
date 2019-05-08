cask 'rightfont' do
  version '5.5.2'
  sha256 '18408d9203b236290db71591cb5c2fd3c649130a10b50fe72e079655f2ca8f25'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
