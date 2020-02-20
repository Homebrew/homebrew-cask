cask 'mindjet-mindmanager' do
  version '12.1.190'
  sha256 '06a68a50fda70bf9d270a9a02ad69441e359b4a0eb63b8217610f08e1998048a'

  url "https://download.mindjet.com/Mindjet_MindManager_Mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english',
          configuration: version.dots_to_underscores
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
