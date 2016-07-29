cask 'soqlxplorer' do
  version '2.40'
  sha256 'c85897a120bd8d5f6afa7b7c1c1917c3b08a971135a652b21d9a52c7d7cf2641'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: 'd86d13c4a2e045f00bfd6e98bf78dd6ffc4a631c706d022be840178a1c83e2d2'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :mit

  app 'SoqlXplorer.app'
end
