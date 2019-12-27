cask 'puppetry' do
  version '3.1.0'
  sha256 '3745456c2ca7a991b1ed2be6a0ebde3accb0fa416d1e67b1dc4250734bdb43bb'

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
