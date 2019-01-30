cask 'rightfont' do
  version '5.3.2'
  sha256 '15c166686c43e266f35df322a9d26750f5b2dff31b32b2054525118d9785fe01'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
