cask 'lastpass' do
  version '4.30.0'
  sha256 '1328ea9f0e896c54674d8e7e8a435589734e9b85b32605486d2adcb86a3f52a1'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
