cask 'suitcase-fusion' do
  version '8,19.0.2'
  sha256 '50b716fe0dd2ceddd2d14741bcfb99ee67b1f845583a68c260a62c95f26f884f'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml",
          checkpoint: 'aaab9eda125164ff1604297600e10028851be078aa622f78ded2b6e91d069ea8'
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  app 'Suitcase Fusion.app'
end
