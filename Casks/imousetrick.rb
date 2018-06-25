cask 'imousetrick' do
  version '1.1'
  sha256 '2e3765766bdd3c96e801c6e90e2ecaf87621e2c687cf02e373dc7b3842a9cc19'

  url 'http://www.beecubu.com/downloads/iMouseTrick'
  appcast 'http://www.beecubu.com/updates/mac/iMouseTrick/appcast.xml'
  name 'iMouseTrick'
  homepage 'http://www.beecubu.com/en/desktop-apps/#iMouseTrick'

  app 'iMouseTrick.app'

  uninstall quit: 'com.beecubu.iMouseTrick'

  zap trash: '~/Library/Preferences/com.beecubu.iMouseTrick.plist'
end
