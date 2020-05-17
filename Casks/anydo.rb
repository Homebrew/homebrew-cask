cask 'anydo' do
  version '4.2.85'
  sha256 '0268fb5801134344f855ec6a1819a5e207bd9b3b10e88e305729bd4fa59cf751'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
