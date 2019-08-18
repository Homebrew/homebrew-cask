cask 'reaper' do
  version '5.98.200'
  sha256 '13c7cbed9ffb60ca5c73d4afd45f401663fde22254fdfa57aef906e577454c76'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots.sub(%r{0*$}, '')}_x86_64.dmg"
  appcast 'https://www.cockos.com/reaper/latestversion/?p=osx_64',
          configuration: "#{version.major}.#{version.minor}#{version.patch.sub(%r{0*$}, '')}"
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
