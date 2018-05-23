cask 'aria2gui' do
  version '1.4.1'
  sha256 '1d7817fce91f1002c6d54ff62e4f35903c62d0e9fe7559d7f840c8da72c1b91f'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: '15f3d179a1afaa0300411834784860dc78de5469618e986996da094d8bcdb65a'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'

  zap trash: [
               '~/Library/Caches/com.Aria2GUI',
               '~/Library/Preferences/com.Aria2GUI.plist',
               '~/Library/Saved Application State/com.Aria2GUI.savedState',
             ]
end
