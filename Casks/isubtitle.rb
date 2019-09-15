cask 'isubtitle' do
  version '3.2.3'
  sha256 '3af9d4c0199720b9cccbd85ae2527565ea45ada176669cfee6f6d6f48cc39bbc'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  depends_on macos: '>= :sierra'

  app 'iSubtitle.app'
end
