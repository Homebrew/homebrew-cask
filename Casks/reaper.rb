cask 'reaper' do
  version '5.20'

  if Hardware::CPU.is_32_bit?
    sha256 '275d7c0b87c82dca5d8c49af233c64cd9f873cea4f81a8ef424f9f5047444e65'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '4de3cf1636d0074ef20f9f1fbeba154503ae395995b53bc32f4d309338e2f9c4'
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
