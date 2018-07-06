cask 'soqlxplorer' do
  version '2.90'
  sha256 '2017024c55b1a7383785300f05cf31594f39faf711bad2f1563a97e4da365f4b'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  depends_on macos: '>= :mavericks'

  app 'SoqlXplorer.app'
end
