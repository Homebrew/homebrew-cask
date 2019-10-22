cask 'rightfont' do
  version '5.7.0'
  sha256 '2bdd97933bf83366c732b4ff165e15f031cb5ef1a0dda6692dce2e70ba353276'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
