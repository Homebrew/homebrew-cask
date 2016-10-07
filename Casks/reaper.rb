cask 'reaper' do
  version '5.26'
  sha256 '030180ee003daa4129b098506204bbcaeb37a31102a5a12cf33331a9edfbd511'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '2dd0e26ee796983eceabec8ed3f712870113b9bede778133a09c1c6d91b72c42'
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
