cask 'anydo' do
  version '4.2.73'
  sha256 'a8ab60e648ea5f9384461938366f8753ab4e9345ba5f0fd3bdf2112664ddc60c'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
