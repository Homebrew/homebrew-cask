cask 'anydo' do
  version '4.2.62'
  sha256 'a9f16a58030530c6219fcd9ec74682f1f4f2c36fcf567bbedc35aab318461eec'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
