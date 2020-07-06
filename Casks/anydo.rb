cask 'anydo' do
  version '4.2.94'
  sha256 '91682e95504387304c64b7fce6b929dd4a1307935bacfd149c5236a55d38e368'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
