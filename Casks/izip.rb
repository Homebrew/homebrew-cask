cask 'izip' do
  version '3.6'
  sha256 '951b631107a532077c99f1bbd1579f6435d3c5715f657068950388af351bd164'

  url 'https://www.izip.com/izip.dmg'
  appcast 'https://www.izip.com/updates'
  name 'iZip'
  homepage 'https://www.izip.com/'

  app 'iZip.app'
end
