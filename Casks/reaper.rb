cask 'reaper' do
  version '5.52'
  sha256 '8834de7d806d530206634ebdfc76430f5c092c2fb7dc604cc60093f628f762a1'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: '81350794dc588bdee83ed5e93ee215b8d02dc7645e924de8c7d60ad9430c8363'
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
