cask 'grids' do
  version '5.0.1'
  sha256 'f43c6f46ac8acbec0273cd098086d916512fbef9ca3c14e43fc2930a1b5df93d'

  url "http://gridsapp.net/bin/Grids_#{version}.zip"
  appcast 'http://gridsapp.net/appcast.json'
  name 'Grids'
  homepage 'http://gridsapp.net/'

  auto_updates true

  app 'Grids.app'

  uninstall quit: 'com.thinktimecreations.Grids'

  zap trash: [
               '~/Library/Application Support/ThinkTimeCreations/Grids',
               '~/Library/Preferences/com.thinktimecreations.Grids.plist',
             ]
end
