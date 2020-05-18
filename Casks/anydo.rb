cask 'anydo' do
  version '4.2.86'
  sha256 '968818816795fc966787de892923d93e70e192fba7f34b60f501511a896e22eb'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
