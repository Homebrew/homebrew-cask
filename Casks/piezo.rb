cask 'piezo' do
  version '1.5.5'
  sha256 'ec4b8ae7d884590c365ff38dd466349ea45168c690b5e720a85e1e712160dbd4'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: 'ec4412b06c576f9b462b87dd0ee2851fed15f8e16e2cebaf90a07a7db6dce2d6'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
