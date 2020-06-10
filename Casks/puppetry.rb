cask 'puppetry' do
  version '3.2.3'
  sha256 '5aeb72cba43719837942de823f665eb91632631ef06d34c5e19d57a4c60121cf'

  # github.com/dsheiko/puppetry/ was verified as official when first introduced to the cask
  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip"
  appcast 'https://github.com/dsheiko/puppetry/releases.atom'
  name 'Puppetry'
  homepage 'https://puppetry.app/'

  app 'puppetry.app'

  zap trash: [
               '~/Library/Application Support/puppetry',
               '~/Library/Preferences/com.dsheiko.puppetry.plist',
               '~/Library/Saved Application State/com.dsheiko.puppetry.savedState',
             ]
end
