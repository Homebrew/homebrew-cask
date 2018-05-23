cask 'iboostup' do
  version '5.9.91'
  sha256 '44d7c589f2cfd715ad00a3797d72878903aa2b87c5d5a9a86f79df2f412379ae'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '428df2d5123c995b6dea94baed9a71eefcdd689fcaa3da2973bda5d424de5a93'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
