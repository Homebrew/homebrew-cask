cask 'reaper' do
  version '5.18'

  if Hardware::CPU.is_32_bit?
    sha256 'c794c34e4254f344f34740a0addffdca0756c8354dccf9800fe079cbcd30f377'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 'af2086c9c3d2be323781cfe9439374cc411aa6061509af95a0b52c7f5215a3fe'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_x86_64.dmg"
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
