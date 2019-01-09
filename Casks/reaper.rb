cask 'reaper' do
  version '5.96.500'
  sha256 'e901cecd6615cdf827a271b15ca2c373ca6f32cf5237e04e8df655657112e512'

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
