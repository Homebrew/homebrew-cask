cask 'anydo' do
  version '4.2.81'
  sha256 '405c59007d0fa550daa80843070efcca371c6ff0b57dfa2268c27b1c69497807'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
