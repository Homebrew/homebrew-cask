cask 'lyn' do
  version '1.9.5'
  sha256 '96db0d6ec3d9767ac7676a4cad457825385ab68c30139368a15dcb21d470be88'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '460f5e96e4d78759526826ef3f37f5a7e4750a9f88f40cc42afe83163be7f516'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
