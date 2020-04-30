cask 'mindjet-mindmanager' do
  version '13.0.181'
  sha256 '8820a1cd65a8452d0965516c7fcb21ac11a4530481aec694c9ce8da67bf8ce4f'

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english',
          configuration: version.dots_to_underscores
  name 'Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'MindManager.app'
end
