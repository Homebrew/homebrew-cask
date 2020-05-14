cask 'grids' do
  version '6.0.10'
  sha256 '17c2673c70e6acd00e351398bce34829a482dae886ff8d7a4ec6ec713d88c6eb'

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  appcast 'https://gridsapp.net/appcast.json'
  name 'Grids'
  homepage 'https://gridsapp.net/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Grids.app'

  uninstall quit: 'com.thinktimecreations.Grids'

  zap trash: [
               '~/Library/Application Support/ThinkTimeCreations/Grids',
               '~/Library/Preferences/com.thinktimecreations.Grids.plist',
             ]
end
