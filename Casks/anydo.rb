cask 'anydo' do
  version '4.2.70'
  sha256 '8d120bd50563c814e8dc4c76b4bd3f68f9f844e0b067a8b260538798da353a72'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
