cask 'aria2gui' do
  version '1.3.8'
  sha256 '34cf93dd67ac61dda5ab2cba76c60caa7e004c88244b30c2a77cbe3c2e96809c'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: '7b0c901e232a7cbf8ff6c426a81aa1258b0c400c5e237d2eb33e48fa47c48c6e'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'

  zap trash: [
               '~/Library/Caches/com.Aria2GUI',
               '~/Library/Preferences/com.Aria2GUI.plist',
               '~/Library/Saved Application State/com.Aria2GUI.savedState',
             ]
end
