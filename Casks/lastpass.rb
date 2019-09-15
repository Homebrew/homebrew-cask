cask 'lastpass' do
  version '4.33.0'
  sha256 '9e2e71916ca55ba4f4d11b3cfa79a2bcf347039e0529734791e84783fde4b723'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
