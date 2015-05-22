cask :v1 => 'cleanarchiver' do
  version '3.0a6'
  sha256 '9b24c7ac24e976b6d364a81e746dcd1526fcbda57e787cd3c0fce00eba1b5847'

  url "https://www.sopht.jp/pub/Mac/CleanArchiver-#{version}.dmg"
  name 'CleanArchiver'
  appcast 'http://www.sopht.jp/cleanarchiver/appcast.xml',
          :sha256 => '8027040d84f421c4861374d4e51fc63da34a999ed9d4f90fb6682202dd7eeecc'
  homepage 'https://www.sopht.jp/cleanarchiver/'
  license :bsd

  app 'CleanArchiver.app'
end
