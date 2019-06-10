cask 'rightfont' do
  version '5.5.3'
  sha256 'c235595c921b8eb0a1e640814613720e7b8e82d638e91bdea620a67517160bd5'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
