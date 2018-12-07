cask 'puppetry' do
  version '1.0.2'
  sha256 'f3f5eccc2b97535212672fd1f4df50f4b1f327e2bbae67467342992d55864b80'

  # github.com/dsheiko/puppetry/releases was verified as official when first introduced to the cask
  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip"
  appcast 'https://github.com/dsheiko/puppetry/releases.atom'
  name 'puppetry'
  homepage 'https://puppetry.app/'

  app 'puppetry.app'

  uninstall signal: [
                      ['TERM', 'com.dsheiko.puppetry'],
                    ]

  zap trash: [
               '~/Library/Application Support/puppetry',
               '~/Library/Preferences/com.dsheiko.puppetry.plist',
               '~/Library/Saved Application State/com.dsheiko.puppetry.savedState',
             ]
end
