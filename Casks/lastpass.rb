cask 'lastpass' do
  version '4.37.0'
  sha256 '66d6359fab75c9f04355b64f20bc8437c4c4b8679d57e4627fb0127b50c85e5c'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
