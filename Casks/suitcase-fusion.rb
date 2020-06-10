cask 'suitcase-fusion' do
  version '21.1.0'
  sha256 '6ee8471be74b2069a33fef764bf7d42ffc14be6a9e3d14b3a9b5ae71828db074'

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/suitcase-fusion/'

  depends_on macos: '>= :high_sierra'

  app 'Suitcase Fusion.app'
end
