cask 'reaper' do
  version '5.31'
  sha256 '27c8707be581b817fc633b011970a3962d119a86f51d2345388478473d6c1741'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '398b82b161dca2a272954e22de319c4c3b78cac7c7cafe10c072df53e006805c'
  name 'REAPER'
  homepage 'http://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap delete: [
                '~/Library/Application Support/REAPER',
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ]
end
