cask 'mindjet-mindmanager' do
  version '11.2.116'
  sha256 '1226a9425d9ec6703516e78af7c406f1415624808e9f4afc06e14585f4ab4474'

  url "https://download.mindjet.com/Mac/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  app 'Mindjet MindManager.app'
end
