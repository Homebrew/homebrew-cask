cask 'brackets' do
  version '1.10'
  sha256 'a4faac726671439590e462af46d228e97ed70ede2e101bbd195b1f03143b00db'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '3559e75e79f9cbb64679435add8870e45f2c7c15daca08ef9e890a46920e38ee'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
