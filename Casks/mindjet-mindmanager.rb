cask 'mindjet-mindmanager' do
  version '12.1.183'
  sha256 '716287e692bbba2c14ba7d5efae3be6148d4b0c62bb57af7195caaec5fc25fa9'

  url "https://download.mindjet.com/Mindjet_MindManager_Mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english',
          configuration: version.dots_to_underscores
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
