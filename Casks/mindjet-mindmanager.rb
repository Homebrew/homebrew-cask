cask 'mindjet-mindmanager' do
  version '12.1.177'
  sha256 'a11c27dd076b2228feea49bcf808ee9e95acb829ebdc9ee349687ad42c67d402'

  url "https://download.mindjet.com/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
