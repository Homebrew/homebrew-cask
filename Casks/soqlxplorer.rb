cask 'soqlxplorer' do
  version '2.60'
  sha256 '29a7b9b9ae13d25038dd25d53a7b15ae4f80640b83dad5ef96dc5d9ecfcd2f29'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: 'a965965c2f744cc086797ed893491100c08efc8f4f6ed2e2f0063bf4774d5243'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  app 'SoqlXplorer.app'
end
