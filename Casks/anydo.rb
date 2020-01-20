cask 'anydo' do
  version '4.2.63'
  sha256 '9c5be13b7e1309e68de69c45786b0faf141cd6d35fd2b811061de33bbab028bb'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
