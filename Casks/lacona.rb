cask 'lacona' do
  version '1.1.4'
  sha256 '5a84412185c8cc8de6f627eb4400b81b314742a56e779db1cb65ba3e2b504230'

  url "https://download.lacona.io/packages/#{version}/Lacona.zip"
  appcast 'https://download.lacona.io/appcast.xml',
          checkpoint: '9452b814e95942b3310d42eb3d2f3873555bb134db81940f6058dea7c9759390'
  name 'Lacona'
  homepage 'https://www.lacona.io/'

  auto_updates true

  app 'Lacona.app'
end
