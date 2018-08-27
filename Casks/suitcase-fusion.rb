cask 'suitcase-fusion' do
  version '8,19.1.1'
  sha256 '7a1df59d333962cc3db4fd61331ab7d33733caeaeb21c96e2daa2361f6732db5'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  app 'Suitcase Fusion.app'
end
