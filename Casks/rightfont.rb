cask 'rightfont' do
  version '5.4.0'
  sha256 '9e73cd1a67c74dfc9ecee15d06fe6fc958a8c26f714a86c9fbe80241b503359a'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
