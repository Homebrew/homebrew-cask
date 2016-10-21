cask 'reaper' do
  version '5.27'
  sha256 '5b1b91cd0138fb13ed8621cb4ac741a988c16a5b497055a3b8e489675f4c8996'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '3852c44b9051d89f290ed1938c6bff724bc6f9025c3f1d5eeea88f2fc044abe5'
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
