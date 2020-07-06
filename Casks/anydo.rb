cask 'anydo' do
  version '4.2.93'
  sha256 '227ab928128447b7279894d0ec17984d502e44a4bd3b8179840fdfd30b0f62a1'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
