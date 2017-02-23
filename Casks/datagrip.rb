cask 'datagrip' do
  version '2016.3.4'
  sha256 '9a5fd58be9fb9e9144ee13df83590a869dda33f89a4b5cd7c0dc0a94b59e01ad'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: '5a5654769c64b370838a9e2b1412d12a417c8988e6c0e1324bc3013d0ca616df'
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
