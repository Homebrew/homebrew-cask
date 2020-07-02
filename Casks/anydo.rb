cask 'anydo' do
  version '4.2.92'
  sha256 '08f7d4111bfd07ccb761eeee3fb3d6b0f7cd31c1fef4d53f3b603f7edad4e76b'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
