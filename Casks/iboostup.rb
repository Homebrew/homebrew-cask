cask 'iboostup' do
  version '5.6.1'
  sha256 'a502070ce45c459e517c5175eb847b4e00b0e26e0baeda71128ad49b5ac04f9b'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '7637d243502d7e5d2325bdeaefacbf040edd1c739324fedffda4d6638d076dd9'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
