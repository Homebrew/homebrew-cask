cask 'anydo' do
  version '4.2.80'
  sha256 'c2bf48ad6b2d9dfeaafa1aed50806c2fb791f48c3a173d9276d6d1d196c17479'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
