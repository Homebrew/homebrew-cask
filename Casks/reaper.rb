cask 'reaper' do
  version '5.34'
  sha256 'e6ee3deb0bfc0a3e8436e0b7074aea59a29e279854bed7b39be2d44f0b0d3f05'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '52837d0d6ac5e4011c9e3929308e33af7279ac8872b7804e1e38ca4da9bc1f11'
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
