cask 'rightfont' do
  version '5.2.3'
  sha256 '203a9bb92c6e07e028bdeeab6758a9e05bb0bcd428b2b9c61d9ca8d3ee09e948'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
