cask 'reaper' do
  version '5.98.300'
  sha256 '7a09f18b62bda9608fb8adb5da90ac95a3d99a52aa2f9c52513ad7aebbefe3c0'

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
