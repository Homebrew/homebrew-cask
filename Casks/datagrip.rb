cask 'datagrip' do
  version '2016.2.4'
  sha256 'aebb7c6bea5a6e69eb3de64dadb9859201a6649626dbdb4dbcbb8d11e3dd4dde'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'

  conflicts_with cask: 'datagrip-eap'

  app 'DataGrip.app'

  zap delete: [
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ]
end
