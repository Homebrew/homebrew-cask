cask 'lastpass' do
  version '4.38.0'
  sha256 'cc42b5d5e04c58c8f554bf5b694a4457e787d2c4db1a586d7a76345b620e760c'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
