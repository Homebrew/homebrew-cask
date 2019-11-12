cask 'anydo' do
  version '4.2.51'
  sha256 'b7d65e11f9f0e5e0a30644ca34e196622c2e3f17786d0a48ab47999ac9f7c7e4'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :sierra'

  app 'Any.do.app'
end
