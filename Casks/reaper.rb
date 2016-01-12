cask 'reaper' do
  version '5.111'

  if Hardware::CPU.is_32_bit?
    sha256 'b6c980388d15502d08e37fbe7dabe70ed7119d32ba38a85b650a590ebad919a8'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '6c9112712d58215db7ed86eba11e3d2d092b20b5fcdc493e2ce1554a76ad06e0'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  name 'Reaper'
  homepage 'http://www.reaper.fm/'
  license :commercial

  zap :delete => [
                   '~/Library/Application Support/REAPER',
                   '~/Library/Saved Application State/com.cockos.reaper.savedState',
                   '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                   '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                   '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
                 ]
end
