cask 'anydo' do
  version '4.2.66'
  sha256 '51a5850ffbbd6291fb9493d6049a1fb2d0f085e34fc7e30a8a009f9b33126070'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
