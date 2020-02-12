cask 'anydo' do
  version '4.2.64'
  sha256 '850f1377fbcd2e2c70f08b4c1374de05f23460685313bca775b119bbe3b348d9'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
