cask 'suitcase-fusion' do
  version '9,20.0.6'
  sha256 '51bf38757c8e1e8a3e77a5b1ffa49cf14fc6c9453cb76e4d706bf5568b43b6cc'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  depends_on macos: '>= :sierra'

  app 'Suitcase Fusion.app'
end
