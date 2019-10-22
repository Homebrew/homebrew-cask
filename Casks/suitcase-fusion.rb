cask 'suitcase-fusion' do
  version '9,20.0.7'
  sha256 '3301f192a5cc6eb4c56c8057b8b2ee2595f124a55bcb02884902249a99f43188'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  depends_on macos: '>= :sierra'

  app 'Suitcase Fusion.app'
end
