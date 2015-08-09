cask :v1 => 'reaper' do
  version '4.78'

  if Hardware::CPU.is_32_bit?
    sha256 'f7374c46a65b2d22c395cb22187d30f920bf59c4241f84299514ec4ae318b770'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '305d6d5a65ed32e0d9cbbc947612e8cd3ae95e016d91ca1b7d9329b6b751228c'
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
