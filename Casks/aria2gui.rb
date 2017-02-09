
cask 'aria2gui' do
  version '1.3.5'
  sha256 'b5a7f0dd34b779cc6cbda6f612ecda6bc57022f30fd371c8433d47eab26cb944'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  name 'aria2gui'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'aria2gui.app'
end
