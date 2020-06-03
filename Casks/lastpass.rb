cask 'lastpass' do
  version '4.49.0'
  sha256 '4f42f57d99d4f7eb737e8142308390f0a8d0e069382b1d38397b0009b141d185'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
