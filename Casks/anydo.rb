cask 'anydo' do
  version '4.2.61'
  sha256 '5211f2c93347cb43c664bb239b3093bd2fa4e6bb2361cd789337a957127de54e'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
