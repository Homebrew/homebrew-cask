cask 'suitcase-fusion' do
  version '9,20.0.2'
  sha256 'b93b513a022f1017bcf04a0343670c24ec566cb782d5646829b67081c85e23d5'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  depends_on macos: '>= :sierra'

  app 'Suitcase Fusion.app'
end
