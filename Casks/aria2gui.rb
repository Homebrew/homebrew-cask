cask 'aria2gui' do
  version '1.4'
  sha256 '8d2c705667a8afd2985e4844ab9cf8ff8ad9136cf865b9f4ad39e01feb39cf81'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: 'ff8ea8ad5615c7e6a47fa0016078cdac2a2cb02d79982222cd6ac18afdf47b80'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'

  zap trash: [
               '~/Library/Caches/com.Aria2GUI',
               '~/Library/Preferences/com.Aria2GUI.plist',
               '~/Library/Saved Application State/com.Aria2GUI.savedState',
             ]
end
