cask 'puppetry' do
  version '3.2.0'
  sha256 'fd1989c37906136085ef6d737d1b69515ee2d1c84da5577d3446e0ab4070fc06'

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
