cask :v1 => 'mindjet-mindmanager-9x' do
  version '9.6.510'
  sha256 '23e2e2e3f712bc9d58b4a826abc3fb50ffac0134e93c4db9e055fa4874fe12d1'

  url 'http://download.mindjet.com/Mindjet_MindManager_Mac_9.6.510.dmg'
  name 'Mindjet MindManager 9'
  homepage 'http://www.mindjet.com/mindmanager/'
  license :commercial

  app 'Mindjet MindManager.app'
end
