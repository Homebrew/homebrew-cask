cask 'mindjet-mindmanager' do
  version '11.0.143'
  sha256 '0ae43356adba76154ed0164b4cb6e5fea7e8484b72cb1858e6cae29694ab7f8c'

  url "http://download.mindjet.com/Mac/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  app 'Mindjet MindManager.app'
end
