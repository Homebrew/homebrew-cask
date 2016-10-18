cask 'kanmusmemory' do
  version '0.15'
  sha256 'af64ae0846ab0b4366693bc602a81ba7e626bafee820862594c4bcbf92acfcef'

  url "http://relog.xii.jp/download/kancolle/KanmusuMemory-#{version}-mac.dmg"
  appcast 'https://github.com/ioriayane/KanmusuMemory/releases.atom',
          checkpoint: 'f8cddbd8afc99bff82204851ed915bf9f8246499cc870ee7481ec24135e29faa'
  name 'KanmusuMemory'
  homepage 'http://relog.xii.jp/mt5r/2013/08/post-349.html'

  app 'KanmusuMemory.app'
end
