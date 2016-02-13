cask 'reaper' do
  version '5.15'

  if Hardware::CPU.is_32_bit?
    sha256 '58df2e5fffd14830b01990cca94a166583671be3cfe657c5f1ed26d4a567df09'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '52acc0dbcecfe775e663c885fcb8702e2e1816b26a48950562558d00c089a224'
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
