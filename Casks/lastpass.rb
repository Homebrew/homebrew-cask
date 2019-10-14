cask 'lastpass' do
  version '4.34.0'
  sha256 '3f649f740455d7fc3185bb6e1e9f2cd98acbfe78f937651d82daeed51ae23eea'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
