cask 'lastpass' do
  version '4.44.0'
  sha256 '6e3bd2d911bcb04de86f5d3be766f75d3e98e9180ddfd391bc68fc4077c5085d'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
