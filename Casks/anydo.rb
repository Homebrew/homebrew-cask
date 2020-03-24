cask 'anydo' do
  version '4.2.72'
  sha256 '804bd7d42cb10ff3970441b591fbfb5ca691c9c1b028293cfde665e5e6c31371'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
