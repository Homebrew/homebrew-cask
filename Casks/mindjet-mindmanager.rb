cask :v1 => 'mindjet-mindmanager' do
  version '10.3.635'
  sha256 'bb567a2f23e6cc08706de80486398df4ce9f6987d7dd2b782efa4629730ff3e3'

  url 'http://www.mindjet.com/mm-mac-dmg'
  name 'Mindjet Mindmanager'
  homepage 'http://www.mindjet.com/mindmanager/'
  license :commercial

  app 'Mindjet MindManager.app'
end
