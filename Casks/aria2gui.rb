cask 'aria2gui' do
  version '1.3.8'
  sha256 '34cf93dd67ac61dda5ab2cba76c60caa7e004c88244b30c2a77cbe3c2e96809c'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: '495a38eb7f2ab8baf97150d2f74ce6cf9b423c9c8cc0643b2a8558436f469fc4'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'
end
