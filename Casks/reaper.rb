cask 'reaper' do
  version '5.97.400'
  sha256 'b877fef65a55c20d08c8f9f363af01bd7ca0f628bc82519dfac6f5478c7e0e4d'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots.sub(%r{0*$}, '')}_x86_64.dmg"
  appcast 'https://www.cockos.com/reaper/latestversion/?p=osx_64'
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap trash: [
               '~/Library/Application Support/REAPER',
               '~/Library/Saved Application State/com.cockos.reaper.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
               '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
             ]
end
