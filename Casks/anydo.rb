cask 'anydo' do
  version '4.2.50'
  sha256 '1fd2b027d00a2a5c5f997c0bb2aaa0b518465d3db188775663b76e1a281b7ac2'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :sierra'

  app 'Any.do.app'
end
