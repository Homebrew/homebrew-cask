cask 'grids' do
  version '5.4'
  sha256 '11ff94ab3293e5ed8bb3e481edc504fcb16884c2ed573163c1daee0e21551d3b'

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
