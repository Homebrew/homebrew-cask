cask 'rightfont' do
  version '5.8.2'
  sha256 'bcbdb43d5a6e42e340cb715553ac4a114d62af5091cc3a81739eedf5c22c2d19'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
