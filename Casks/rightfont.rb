cask 'rightfont' do
  version '5.8.3'
  sha256 '3a38234a379cb298770398fefc1a95ae0d9077d98616d0593c97bf6eac80871c'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
