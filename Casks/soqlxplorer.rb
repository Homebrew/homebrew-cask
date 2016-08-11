cask 'soqlxplorer' do
  version '2.50'
  sha256 '8267f37c6fa88c7a521830a0790d0bc528d78e07b40b048cbaa6403b9eb93455'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: 'f7b6c34d4e4425891096a5d3911f9b69ff452f799721d08ced6bebf2f5125300'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :mit

  app 'SoqlXplorer.app'
end
