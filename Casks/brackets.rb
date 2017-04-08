cask 'brackets' do
  version '1.9'
  sha256 '489846205d13eb5abe156e0ffd171f0dfaf2183d216e6165f26a84caae1002d5'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '19990361337196eab65ff78388f45866bd1c3c3ada3b54c302322b07dadd236b'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
