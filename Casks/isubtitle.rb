cask 'isubtitle' do
  version '3.2.1'
  sha256 '4be9130967e8041773a2d48868484df3e87d6c7e085fb8b695a7e59b834b707b'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  depends_on macos: '>= :sierra'

  app 'iSubtitle.app'
end
