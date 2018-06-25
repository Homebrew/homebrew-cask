cask 'reaper' do
  version '5.92'
  sha256 '81c69ec6c0e0af818a180475c24f1c989df5769337d2ea1f442a52860ad93417'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php'
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
