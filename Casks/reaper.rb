cask :v1 => 'reaper' do
  version '4.76'

  if Hardware::CPU.is_32_bit?
    sha256 '6aaf2fcdd0fbdefb566df889de2185400b41294aee1690a91b688157b98f4c0f'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.gsub('.','')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '300a3f452f8f1bfe92206cf92898a96a4652774f5c5e3a9034ea964ca19e9351'
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
