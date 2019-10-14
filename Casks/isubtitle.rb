cask 'isubtitle' do
  version '3.3'
  sha256 '4ba3046f1d1e6f1a23827e2e0b6407716cc3208a2cf7a5234f1f285563ee3a31'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  depends_on macos: '>= :sierra'

  app 'iSubtitle.app'
end
