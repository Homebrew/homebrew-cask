cask 'grids' do
  version '5.7'
  sha256 'af45af8c68468da24c2aa0dd7adccfe9da4c2adfff4bd0fa5f5015bfd0033d02'

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
