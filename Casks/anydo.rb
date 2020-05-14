cask 'anydo' do
  version '4.2.84'
  sha256 'c9ed4199c6de5a19ff910619821e7d930e1ac26af2fabcfb012e1bde4bb7aa44'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
