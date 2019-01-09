cask 'isubtitle' do
  version '3.2'
  sha256 '1c6a24aa942dfee451bea0f4ddf545421d85e6ac521f4255a390b4e383c33242'

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  depends_on macos: '>= :sierra'

  app 'iSubtitle.app'
end
