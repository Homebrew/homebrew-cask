cask 'anydo' do
  version '4.2.68'
  sha256 '9c43855adb3a13f53e17b4941c59ebd6c5b0d3ff1d9a6cc26c6df6c4478e2b34'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
