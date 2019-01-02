cask 'soqlxplorer' do
  version '3.00'
  sha256 '8f8cf4663a6a989b63375e2f4716f2859ee205342737ff6b87f1d9d8253a7b91'

  url "http://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  depends_on macos: '>= :mavericks'

  app 'SoqlXplorer.app'
end
