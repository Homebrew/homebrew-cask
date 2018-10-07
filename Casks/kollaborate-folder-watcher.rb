cask 'kollaborate-folder-watcher' do
  version '1.3.2.0'
  sha256 'f894254e44993bf1211af1c32c20902fcad329894b862e08481133950cd382af'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "https://www.digitalrebellion.com/download/kollabfolderwatcher?version=#{version.no_dots}"
  name 'Kollaborate Folder Watcher'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Folder Watcher.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.KollabFolderWatcher.plist'
end
