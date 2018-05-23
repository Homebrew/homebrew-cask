cask 'hazeover' do
  version '1.7.7-589'
  sha256 '235e521e581a2d509dfe60704109ba15fce6c15455c4ca30a926eec0b3526514'

  url 'https://hazeover.com/HazeOver.dmg'
  appcast 'https://hazeover.com/updates.xml',
          checkpoint: 'd6fd039ed6610bf3d96c76d14768d012911be3055e1327242b150ab94f9c8fe0'
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
