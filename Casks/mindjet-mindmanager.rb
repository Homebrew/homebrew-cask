cask 'mindjet-mindmanager' do
  version '12.0.161'
  sha256 '8fe9b6d77cf4627f9397f11ca8520a7944f3db4de7983414f6f69ce8fac1ccc4'

  url "https://download.mindjet.com/Mac/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
