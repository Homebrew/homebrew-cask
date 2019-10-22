cask 'anydo' do
  version '4.2.49'
  sha256 '16c1ff093a6a62bb04dc92b09e92e1edfb0913c472f7d0423a44d7fae25ca1ea'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :sierra'

  app 'Any.do.app'
end
