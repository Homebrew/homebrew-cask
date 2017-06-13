cask 'soqlxplorer' do
  version '2.60'
  sha256 '29a7b9b9ae13d25038dd25d53a7b15ae4f80640b83dad5ef96dc5d9ecfcd2f29'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: '70205d0d804a6f29f27f8b52cc9f965456cbf8c41b2f46da0461dd5c6d840f11'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  app 'SoqlXplorer.app'
end
