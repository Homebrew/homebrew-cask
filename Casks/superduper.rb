class Superduper < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.shirt-pocket.com/downloads/SuperDuper!.dmg'
  homepage 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'
  zap :files => '~/Library/Application Support/SuperDuper!'
end
