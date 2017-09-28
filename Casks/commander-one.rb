cask 'commander-one' do
  version '1.7.4'
  sha256 '817b8268fb115b15eda107d304f05dc42185e7dc6b3a803cfdbf99a57b9626e1'

  url 'https://mac.eltima.com/download/commander.dmg'
  appcast 'https://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: 'a8ff91be0ebacdd3fc00fbdec002a1f9cc8590416f8a103ce04c5562534e21df'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
