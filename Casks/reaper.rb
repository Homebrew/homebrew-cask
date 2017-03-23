cask 'reaper' do
  version '5.35'
  sha256 'acba5b3bcfdb11bbd3a4c5626232d32ce6d21ae3449d5eb0b0d3a7cc49a9103d'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '2f949b46ffa9a609e1adb53d1884efcd54e779465ab33e0473e1fce712d2327f'
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
