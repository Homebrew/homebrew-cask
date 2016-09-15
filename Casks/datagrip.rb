cask 'datagrip' do
  version '2016.2.3'
  sha256 '0cee084a8080267b9d404c39955cad50a424042e87a8d78210a6d751a52fac92'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'
  license :commercial

  conflicts_with cask: 'datagrip-eap'

  app 'DataGrip.app'

  zap delete: [
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ]
end
