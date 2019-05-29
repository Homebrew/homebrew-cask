cask 'reaper' do
  version '5.97.800'
  sha256 'a6b0805427ae3323d5df01f101eced3a34bcecc18091d7a067bdb8e30f5d4f0c'

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
