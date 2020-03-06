cask 'suitcase-fusion' do
  version '21.0.1'
  sha256 'c6592d0995876988ad82aed18e2491a6fe58d921dc68d502459fcc242d5878aa'

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/suitcase-fusion/'

  depends_on macos: '>= :high_sierra'

  app 'Suitcase Fusion.app'
end
