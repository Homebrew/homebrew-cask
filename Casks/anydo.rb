cask 'anydo' do
  version '4.2.78'
  sha256 'c6089a4182f68e5dc3affbc736c2e678618999e13b6b7652a15216242f2306cc'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
