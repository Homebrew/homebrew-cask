cask :v1 => 'mindjet-mindmanager' do
  version :latest
  sha256 :no_check

  url 'http://www.mindjet.com/mm-mac-dmg'
  name 'Mindjet Mindmanager'
  homepage 'http://www.mindjet.com/mindmanager/'
  license :commercial

  app 'Mindjet MindManager.app'
end
