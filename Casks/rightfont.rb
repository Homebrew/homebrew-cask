cask 'rightfont' do
  version '5.8.4'
  sha256 'e581cac8691bb397c3e09ec83af8c30eb8da9fe8291b3a8f49a3e4e8cc828e57'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
