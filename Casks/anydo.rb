cask 'anydo' do
  version '4.2.76'
  sha256 '310eead44da5096311586973668c2b491d26f9462f32ddc48fb33ff3e35e7afc'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
