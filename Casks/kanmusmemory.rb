cask :v1 => 'kanmusmemory' do
  version '0.15'
  sha256 'af64ae0846ab0b4366693bc602a81ba7e626bafee820862594c4bcbf92acfcef'

  url "http://relog.xii.jp/download/kancolle/KanmusuMemory-#{version}-mac.dmg"
  appcast 'https://github.com/ioriayane/KanmusuMemory/releases.atom'
  name 'KanmusuMemory'
  homepage 'http://relog.xii.jp/mt5r/2013/08/post-349.html'
  license :apache

  app 'KanmusuMemory.app'
end
