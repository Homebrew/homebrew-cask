cask :v1 => 'cleanarchiver' do
  version '3.0a6'
  sha256 '9b24c7ac24e976b6d364a81e746dcd1526fcbda57e787cd3c0fce00eba1b5847'

  url "https://www.sopht.jp/pub/Mac/CleanArchiver-#{version}.dmg"
  name 'CleanArchiver'
  homepage 'https://www.sopht.jp/cleanarchiver/'
  license :bsd

  app 'CleanArchiver.app'
end
