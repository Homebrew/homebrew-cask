cask 'isubtitle' do
  version '3.2.2'
  sha256 '7b00f0b0c8994968e1749139b0e47a78a1db2585e18038365af0d198bbdd6506'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  depends_on macos: '>= :sierra'

  app 'iSubtitle.app'
end
