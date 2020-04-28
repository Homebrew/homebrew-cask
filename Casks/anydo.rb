cask 'anydo' do
  version '4.2.82'
  sha256 'e68890b189dc8d310aca7bc5f89c00abf65b53ef7a83be1e8571d71dc7ba2e0c'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
