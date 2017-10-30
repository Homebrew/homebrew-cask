cask 'imousetrick' do
  version '1.1'
  sha256 '2e3765766bdd3c96e801c6e90e2ecaf87621e2c687cf02e373dc7b3842a9cc19'

  url 'http://www.beecubu.com/downloads/iMouseTrick'
  name 'iMouseTrick'
  homepage 'http://www.beecubu.com/en/desktop-apps/#iMouseTrick'

  app 'iMouseTrick.app'

  zap quit:   'com.beecubu.iMouseTrick',
      delete: [
                '~/Library/Preferences/com.beecubu.iMouseTrick.plist',
                '/private/var/folders/*/*/*/com.beecubu.iMouseTrick',
              ]
end
