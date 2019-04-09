cask 'suitcase-fusion' do
  version '9,20.0.3'
  sha256 '795993e13124419cd5d06b36ed99f7c8d5fc378be07801f4838621c9b9d5e56b'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  depends_on macos: '>= :sierra'

  app 'Suitcase Fusion.app'
end
