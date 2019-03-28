cask 'grids' do
  version '5.4'
  sha256 'c233085e9e351b03b69378d88b50406f10616db197f9394c39a497aa8b30f863'

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
