cask 'mindjet-mindmanager' do
  version '11.2.111'
  sha256 '68dc4bdd407d770d03d9e7bfc215a87f1ea49d555b2d34b80f370332859fdee6'

  url "https://download.mindjet.com/Mac/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  app 'Mindjet MindManager.app'
end
