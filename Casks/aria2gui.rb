cask 'aria2gui' do
  version '1.3.5'
  sha256 'b5a7f0dd34b779cc6cbda6f612ecda6bc57022f30fd371c8433d47eab26cb944'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: 'cf4c11c299e639d7979e80c46d43979f11c26fe1b2f3098523598aab16e29910'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'
end
