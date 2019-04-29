cask 'kollaborate-folder-watcher' do
  version '1.3.3.0'
  sha256 '8fb69e5b6b5977ae99a2f2e6fac222f6e4ace7595fde304cfa9cd176f698435f'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "https://www.digitalrebellion.com/download/kollabfolderwatcher?version=#{version.no_dots}"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://www.digitalrebellion.com/download/kollabfolderwatcher'
  name 'Kollaborate Folder Watcher'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Folder Watcher.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.KollabFolderWatcher.plist'
end
