cask 'mindjet-mindmanager' do
  version '12.1.191'
  sha256 'd3157448ece6346620e658133b5f8c776fc62fde0a589c643b159e3d7b5e3607'

  url "https://download.mindjet.com/Mindjet_MindManager_Mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english',
          configuration: version.dots_to_underscores
  name 'Mindjet Mindmanager'
  homepage 'https://www.mindjet.com/mindmanager/'

  depends_on macos: '>= :high_sierra'

  app 'Mindjet MindManager.app'
end
