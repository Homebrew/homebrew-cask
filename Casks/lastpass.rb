cask 'lastpass' do
  version '4.35.0'
  sha256 '5f75ab807ade055118da037eea19deda0ec15e2fe01c78818beeb3dc9a0604af'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
