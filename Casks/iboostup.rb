cask 'iboostup' do
  version '5.6.1'
  sha256 'a502070ce45c459e517c5175eb847b4e00b0e26e0baeda71128ad49b5ac04f9b'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: 'ef359e1ee2d461e285517fc50650db354234423fb5a5a70b3dd0e81bae19414d'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
