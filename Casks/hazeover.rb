cask 'hazeover' do
  version '1.7.9-680'
  sha256 '04249260e7a66c109dc30ccb17a3792efc40a595f5bfa74e60335cc87d12e04f'

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
