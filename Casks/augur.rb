cask 'augur' do
  version '1.16.9'
  sha256 '4f8bb5c5bdfd659ef3b3a3259cd13295234d2cebc39ce563965904174e2abfb0'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
