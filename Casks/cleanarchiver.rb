cask 'cleanarchiver' do
  version '3.0a6'
  sha256 '9b24c7ac24e976b6d364a81e746dcd1526fcbda57e787cd3c0fce00eba1b5847'

  url "https://www.sopht.jp/pub/Mac/CleanArchiver-#{version}.dmg"
  appcast 'https://www.sopht.jp/cleanarchiver/appcast.xml',
          checkpoint: 'fcf7d3097d207f1c4322c5a8351a787987cfa39d6d095d9e8a9a403b98f37a48'
  name 'CleanArchiver'
  homepage 'https://www.sopht.jp/cleanarchiver/'

  app 'CleanArchiver.app'
end
