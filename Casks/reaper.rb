cask 'reaper' do
  version '5.51'
  sha256 '1b37f2ad46373825e4cac487b1dcde1359212168e37fe1d6367e6e8bd4aaeb01'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: '06ec6403d1b48178149d5399f1998ace3907d2c12b12aed4a324355df6dba052'
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap delete: [
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ],
      trash:  '~/Library/Application Support/REAPER'
end
