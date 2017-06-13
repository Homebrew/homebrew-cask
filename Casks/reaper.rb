cask 'reaper' do
  version '5.40'
  sha256 '7b4d257b3716a3d2bcefcb64a863115ae221c25da3be3088ca7f1b1af80b8195'

  url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: 'adf9905d3a534285a4c1394dd9d40a7b857071ab98cd0cc1a88df296be2674cf'
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
