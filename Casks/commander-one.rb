cask 'commander-one' do
  version '1.7.4'
  sha256 '817b8268fb115b15eda107d304f05dc42185e7dc6b3a803cfdbf99a57b9626e1'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
