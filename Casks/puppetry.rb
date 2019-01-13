cask 'puppetry' do
  version '1.0.5'
  sha256 '0567be5d47ea4278e7ace74e43218df56aa204dd81642cc993491d16365dd757'

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
