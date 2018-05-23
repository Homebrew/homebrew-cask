cask 'imousetrick' do
  version '1.1'
  sha256 '2e3765766bdd3c96e801c6e90e2ecaf87621e2c687cf02e373dc7b3842a9cc19'

  url 'http://www.beecubu.com/downloads/iMouseTrick'
  appcast 'http://www.beecubu.com/updates/mac/iMouseTrick/appcast.xml',
          checkpoint: 'a77b7a54a504bf205661ee135bb121a485a8f1e43a8e880829ecaba0ac3e88f5'
  name 'iMouseTrick'
  homepage 'http://www.beecubu.com/en/desktop-apps/#iMouseTrick'

  app 'iMouseTrick.app'

  uninstall quit: 'com.beecubu.iMouseTrick'

  zap trash: '~/Library/Preferences/com.beecubu.iMouseTrick.plist'
end
