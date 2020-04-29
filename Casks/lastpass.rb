cask 'lastpass' do
  version '4.47.0'
  sha256 '07c7ce79785362e2cec4fd90d85a5f9c263c1def4a1ca5a32f306c04bfc2c13b'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
