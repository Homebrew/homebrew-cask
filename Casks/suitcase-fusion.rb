cask 'suitcase-fusion' do
  version '8,19.1.0'
  sha256 '780b33cd57cdb8cb49f68b0387cd7c1e45a7b05b8c91519045b801b9c7172db7'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  app 'Suitcase Fusion.app'
end
