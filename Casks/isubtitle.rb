cask 'isubtitle' do
  version '3.1.2'
  sha256 '3d973f7a5913c5a9444ea66a11da848970e714ed75b11953bf1939264b6fb2fb'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
