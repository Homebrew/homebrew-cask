cask 'kollaborate-folder-watcher' do
  version '1.2.0.0'
  sha256 'e34920ccea7e85dfd88d27a02714837c5d79a3210453cf4a4f7d1d1745123419'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabfolderwatcher?version=#{version.no_dots}"
  name 'Kollaborate Folder Watcher'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Folder Watcher.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabFolderWatcher.plist'
end
