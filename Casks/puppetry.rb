cask 'puppetry' do
  version '3.1.1'
  sha256 'd840a629b1cb68ad5704e8c1e39372d110d9a82a8cd9f53d70db6ad9ad55735a'

  # github.com/dsheiko/puppetry was verified as official when first introduced to the cask
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
