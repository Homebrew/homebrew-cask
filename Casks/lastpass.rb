cask 'lastpass' do
  version '4.45.0'
  sha256 'b76b5dabea61d063936193e915c06ba85a24c5a4310bd0756183e4ea584e7ed0'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
