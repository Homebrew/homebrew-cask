cask 'lastpass' do
  version '4.40.1'
  sha256 '3763909b2212fc6f7515e9dbd3b107e382036b708b22e10e5cbfff36d1372440'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
