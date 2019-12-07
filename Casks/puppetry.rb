cask 'puppetry' do
  version '3.0.0'
  sha256 'a7411c0c6dd5a0bd7d5c51d046a5bd0ae1a06a143606fd49b236b3997aa7fd56'

  # github.com/dsheiko/puppetry was verified as official when first introduced to the cask
  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip"
  appcast 'https://github.com/dsheiko/puppetry/releases.atom'
  name 'puppetry'
  homepage 'https://puppetry.app/'

  app 'puppetry.app'

  uninstall signal: [
                      ['TERM', 'coma.dsheiko.puppetry'],
                    ]

  zap trash: [
               '~/Library/Application Support/puppetry',
               '~/Library/Preferences/com.dsheiko.puppetry.plist',
               '~/Library/Saved Application State/com.dsheiko.puppetry.savedState',
             ]
end
