cask 'reaper' do
  version '5.23'

  if Hardware::CPU.is_32_bit?
    sha256 '8c7180d07805b1803eaabfea6f0853e1d87d5b436706ac650a02a3e57de8d5f6'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '568f510cf4f6fc0d415d4a5cc0479e4e017f26b5530bb0817145c3c4d4bc7c42'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '04dd1ce205c25c4f6091a6a08a7c878d1f1049896dcdf951246c283f2e59cbdb'
  name 'REAPER'
  homepage 'http://www.reaper.fm/'
  license :commercial

  zap delete: [
                '~/Library/Application Support/REAPER',
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ]
end
