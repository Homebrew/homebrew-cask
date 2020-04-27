cask 'puppetry' do
  version '3.2.1'
  sha256 'b03561bdcb8ac7bfeb85609514f5d7baf8e6526c58b35fdb8d219835bc780c30'

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
