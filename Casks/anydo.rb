cask 'anydo' do
  version '4.2.46'
  sha256 'eeb4eae85b6609c4c3d775b96e0e2c77438bb4be81a9695dabe1bf65e9eb92e6'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  app 'Any.do.app'
end
