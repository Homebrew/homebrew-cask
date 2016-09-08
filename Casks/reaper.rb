cask 'reaper' do
  version '5.24'

  if Hardware::CPU.is_32_bit?
    sha256 'eda92fa2d494a9b249a0e6171c3e1a2e33778b8e2c9ac86a4898090436383d59'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 'ab3b4c4539a3e43bc69812d1b3e9609f1a31bdc22590e6b848aeabb41cc0c0d9'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '3c98083581789c6787b03532c26af99c65aa4589a652c04f11312f66589b005c'
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
