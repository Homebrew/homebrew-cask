cask 'anydo' do
  version '4.2.55'
  sha256 '4f3db32f619284972d80070f065f8180202594a6bc63caa138fbf8fe56886ad3'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
