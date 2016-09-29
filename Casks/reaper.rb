cask 'reaper' do
  version '5.25'
  sha256 '2dc452bca5ff728fa1052c07a83fe87f0b7d11b6536164163e811e88f1982a33'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '94c58a8ea3ad99e8550826bdaa236e3d8a2ffe0b997296dbaf8e50aa1d73b452'
  name 'REAPER'
  homepage 'http://www.reaper.fm/'
  license :commercial

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
