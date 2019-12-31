cask 'anydo' do
  version '4.2.58'
  sha256 'cb7c75deb0fb3bd422059596ad3f52293636e82f26a173c55d5c5692e56ab058'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
