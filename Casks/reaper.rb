cask 'reaper' do
  version '5.22'

  if Hardware::CPU.is_32_bit?
    sha256 '78492fcf2c8d7e4e90e44f53ff5776602c9bbf6b3cb661a818f7fb43a428a46b'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '44eebdc7b13fd5fd6adaef8a26fba9c59798127d1d832d9ea6f85cea3f02f4d4'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

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
