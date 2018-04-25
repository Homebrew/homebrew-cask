cask 'reaper' do
  version '5.79'
  sha256 'a9bc978aa2abc7767c60f1b7315e191ab10c866ec7a051527db56e6f91bf944e'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: 'cdcc9fe6ef64adc816d8623dfc5e9d27bd98ffb1b310ddd80bd2fc7aaef32a06'
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
