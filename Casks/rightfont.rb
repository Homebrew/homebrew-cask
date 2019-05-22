cask 'rightfont' do
  version '5.5.3'
  sha256 'e758a45ae3a1cf574e3f4bbed447eecfb1e28e2ffabc39158414857c3f7e75f8'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
