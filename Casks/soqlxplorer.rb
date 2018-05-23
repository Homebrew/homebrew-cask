cask 'soqlxplorer' do
  version '2.90'
  sha256 '2017024c55b1a7383785300f05cf31594f39faf711bad2f1563a97e4da365f4b'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: '5ec8e6474f64892a209d52bdb1df615ac595e9cefd1bd577c1d963fb0ae5099d'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  depends_on macos: '>= :mavericks'

  app 'SoqlXplorer.app'
end
