cask 'brackets' do
  version '1.10'
  sha256 'a4faac726671439590e462af46d228e97ed70ede2e101bbd195b1f03143b00db'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '593cb947ceb3b2b02102c979debfc0c6dc777de6db3b82efef64ed21ba753760'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
