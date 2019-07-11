cask 'commander-one' do
  version '2.1'
  sha256 '0427df2b69a08ba6e96c6a8f8b9646ad660d058e2a7491aa091a8dc39c4f828b'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
