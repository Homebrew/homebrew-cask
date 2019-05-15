cask 'lastpass' do
  version '4.27.2'
  sha256 'd9bc5c2efa0a73cdb59e7117d46dc1b3886e7038e28444c7c04cc28c94f19014'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  app 'LastPass.app'
end
