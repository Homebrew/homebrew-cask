cask 'commander-one' do
  version '2.0'
  sha256 'e6e09e6aa7fc22d98cb3fe219fe623f6fc277c159c3930f8c14543da822dd386'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
