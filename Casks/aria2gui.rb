cask 'aria2gui' do
  version '1.3.7'
  sha256 '96779f1cc15120f7d2cd716e55ffb52848937084b916d19c147cada0ff485396'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: '9bcb6e2b5713da199f1e9912b392c0b18192a7f1beae50b49898637edf24cf26'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'
end
