cask :v1 => 'reaper' do
  version '4.77'

  if Hardware::CPU.is_32_bit?
    sha256 '7cbee1765e3e48230eafb9c9f17ebee9eaac1aa1459bb10f078dedc874f231d3'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.gsub('.','')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '09ca05fcc3a96f6f11f5e6bc8f6972869bbe8f01fe206bab76bd06760ff811d2'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.gsub('.','')}_x86_64.dmg"
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
