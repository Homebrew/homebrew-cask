cask 'hazeover' do
  version '1.8.5-900'
  sha256 '759f08636ef5668612c34049e482a1bd1cfbab83d38a38ae597d7f10e8085e11'

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
