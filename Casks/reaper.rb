cask :v1 => 'reaper' do
  version '5.04'

  if Hardware::CPU.is_32_bit?
    sha256 '6f64bbbb13c8d802058703761447fb7d181873729cc1e0ce05052aeaad35e51b'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '06914fd3a92c66a4a37ce8ed1d2f7ee799e440dbf741461fdea8fdb03349952b'
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
