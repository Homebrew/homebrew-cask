cask :v1 => 'reaper' do
  version '5.03'

  if Hardware::CPU.is_32_bit?
    sha256 '8d51a66afcfc673eb513008297784828eb27e81f12a6df78073f762606a60150'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '8cf208716a063df0f05b246aa20f28637ef1a6329388c03834096a4ba38fd90d'
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
                  '~/Library/Saved Application State/com.cockos.ReaMote.savedState'
                 ]
end
