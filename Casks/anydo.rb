cask 'anydo' do
  version '4.2.48'
  sha256 '624363ab60cf8210f74aacede65f2d11540a1834bb4d22795eb05d438563214f'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :sierra'

  app 'Any.do.app'
end
