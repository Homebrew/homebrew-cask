cask 'anydo' do
  version '4.2.83'
  sha256 '36cd2d0bdcd4c3a714b77cf2e45e81283e7b9c4dc365e2ed38c8a61e8e2b58eb'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
