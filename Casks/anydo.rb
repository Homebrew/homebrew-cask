cask 'anydo' do
  version '4.2.47'
  sha256 'ba73bde4a7e247e54b2b084b128cac0b49fa72f3e50bc35c2d721f7b9fb1442a'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :sierra'

  app 'Any.do.app'
end
