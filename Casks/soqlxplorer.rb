cask 'soqlxplorer' do
  version '3.1'
  sha256 '483b940c0ac4dd3e79aa6418379788a6598d8a0d6ab1070f582de4e9aff641a5'

  url "http://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  app 'SoqlXplorer.app'
end
