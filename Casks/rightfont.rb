cask 'rightfont' do
  version '5.8.2'
  sha256 '201bab5882977fb41a872fa93997df5be640d8a22e011a120c16b83274a0ba43'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
