cask 'kollaborate-folder-watcher' do
  version '1.2.1.0'
  sha256 '0dbc9a1563df0cee0a8fde79145a9840d80906c0c31f0579340cebbde3d33ec4'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabfolderwatcher?version=#{version.no_dots}"
  name 'Kollaborate Folder Watcher'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Folder Watcher.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabFolderWatcher.plist'
end
