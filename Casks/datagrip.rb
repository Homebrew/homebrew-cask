cask 'datagrip' do
  version '2016.3.3'
  sha256 '3d7b52ad66275fd3d61d1338521ac61981d3b01924fd784c71036769192f014b'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: 'ed14740685322fc685436779cff65bafa268cda4cd6fdb563b290375b4b1245d'
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'

  auto_updates true
  conflicts_with cask: 'datagrip-eap'

  app 'DataGrip.app'

  zap delete: [
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ]
end
