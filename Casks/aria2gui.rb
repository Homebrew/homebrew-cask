cask 'aria2gui' do
  version '1.3.6'
  sha256 '789c28ccb8f9f09e0618c437485b63e390b7d0b289ce37d6d71b253daf571d12'

  url "https://github.com/yangshun1029/aria2gui/releases/download/#{version}/Aria2GUI-v#{version}.zip"
  appcast 'https://github.com/yangshun1029/aria2gui/releases.atom',
          checkpoint: '857f8649c18697d34035a317dffada3b132b308630edb00e75b1d7eab5fb7442'
  name 'Aria2GUI'
  homepage 'https://github.com/yangshun1029/aria2gui'

  app 'Aria2GUI.app'
end
