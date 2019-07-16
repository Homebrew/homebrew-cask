cask 'reaper' do
  version '5.98.0'
  sha256 'ce199c7fe47f8d3d057b27f0310c6ad221500f9ffa10b83a12f3d619e0a16811'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.cockos.com/reaper/latestversion/?p=osx_64',
          configuration: "#{version.major}.#{version.minor}#{version.patch}"
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
