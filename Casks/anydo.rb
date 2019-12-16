cask 'anydo' do
  version '4.2.56'
  sha256 '148ceefd604242967b3991fe579d9304bb404401dc067925bce1d4e0892f0697'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
