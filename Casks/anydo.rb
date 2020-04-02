cask 'anydo' do
  version '4.2.77'
  sha256 'e6301608fb0ef3ca75d0a4d6d4e451c69796ae1701e3d1b4787a9f5a6f823f89'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
