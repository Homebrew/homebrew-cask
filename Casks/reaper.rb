cask 'reaper' do
  version '5.61'
  sha256 '74bf2890eb660f51adce706498985fc91ec110d3e12379100c9a050cac7bffbd'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: '9fe3f3858a4ca6ec2dbe5d765ea6f46b15c35a6153d5233865962c414a4e4398'
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap delete: [
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ],
      trash:  '~/Library/Application Support/REAPER'
end
