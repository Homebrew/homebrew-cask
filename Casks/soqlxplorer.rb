cask 'soqlxplorer' do
  version '2.70'
  sha256 '742487d026df3984ee0851d3a2a77b6f003262ebd6845c069aba67c8d03f4088'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: '15219bccd9809cb334dd164846a7b43421a079918c50c7091773778712e976c9'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'

  app 'SoqlXplorer.app'
end
