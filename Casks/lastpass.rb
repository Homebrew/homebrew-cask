cask 'lastpass' do
  version '4.33.5'
  sha256 'ab4f444472cc6afc47e7177e0abf07f4d728c75793e5cc11f64406f0c951956d'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
