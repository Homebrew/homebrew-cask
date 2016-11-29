cask 'kollaborate-folder-watcher' do
  version '1.0.0.0'
  sha256 '31652e3b275a566157da2fcca19740f1451d8bff24a1fdf4ce75c0c69b4ed6b5'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabfolderwatcher?version=#{version.no_dots}"
  name 'Kollaborate Folder Watcher'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Folder Watcher.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabFolderWatcher.plist'
end
