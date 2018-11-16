cask 'mindjet-mindmanager' do
  version '11.2.117'
  sha256 'e0f34d105e260522277852800af4ee94298f8ef8fde2784a9bf5899e9f5e2a4d'

  url "https://download.mindjet.com/Mac/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  app 'Mindjet MindManager.app'
end
