cask 'rightfont' do
  version '5.2.4'
  sha256 '57b955fc1ef48284a8ac654f73cb3bb08c1ae4fec265792a508896f64c012e9f'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
