cask 'anydo' do
  version '4.2.75'
  sha256 '756e2fa2cad653f05ef08cf95716a3022f2e64141ae504078f51c7b3c48bc112'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
