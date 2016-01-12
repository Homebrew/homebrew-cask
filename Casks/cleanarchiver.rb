cask 'cleanarchiver' do
  version '3.0a6'
  sha256 '9b24c7ac24e976b6d364a81e746dcd1526fcbda57e787cd3c0fce00eba1b5847'

  url "https://www.sopht.jp/pub/Mac/CleanArchiver-#{version}.dmg"
  appcast 'https://www.sopht.jp/cleanarchiver/appcast.xml',
          :sha256 => '610b2e588513fed2fc3a4fcfb76e1eb0bbd4320d0cb8e3518978addf38a5613f'
  name 'CleanArchiver'
  homepage 'https://www.sopht.jp/cleanarchiver/'
  license :bsd

  app 'CleanArchiver.app'
end
