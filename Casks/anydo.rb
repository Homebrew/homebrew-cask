cask 'anydo' do
  version '4.2.96'
  sha256 '700c4776e92e070bdad6cdfcfb812d3278d50d5e4e663fdeae71ffa621b8b38d'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
