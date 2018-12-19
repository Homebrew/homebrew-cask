cask 'hazeover' do
  version '1.8.1-700'
  sha256 '6b1185a16d9d4950d9324c57906df844f959df3ffd308bcaba6dae49ae4ff1c5'

  url 'https://hazeover.com/HazeOver.dmg'
  appcast 'https://hazeover.com/updates.xml'
  name 'HazeOver'
  homepage 'https://hazeover.com/'

  app 'HazeOver.app'

  uninstall launchctl: 'com.pointum.hazeover.launcher',
            quit:      'com.pointum.hazeover'

  zap trash: [
               '~/Library/Caches/com.pointum.hazeover',
               '~/Library/Preferences/com.pointum.hazeover.plist',
             ]
end
