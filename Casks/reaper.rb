cask 'reaper' do
  version '5.70'
  sha256 '560c2d806bec56ab6800e5d1ddacd24c96b2ef4c5bd4557c321a7e227a578fbe'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: 'e36c9480ef34496d99cf1d74ab1ec6e4c5243162bad066067215e791fd74c8e4'
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
