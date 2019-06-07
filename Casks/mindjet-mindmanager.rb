cask 'mindjet-mindmanager' do
  version '12.1.183'
  sha256 '716287e692bbba2c14ba7d5efae3be6148d4b0c62bb57af7195caaec5fc25fa9'

  url "https://download.mindjet.com/Mindjet_MindManager_Mac_#{version}.dmg"
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
