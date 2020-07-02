cask 'anydo' do
  version '4.2.91'
  sha256 'ebcb1502f1bf258aa388fc54e42585436b0c8b0cffcf7304d2280a49749c30eb'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
