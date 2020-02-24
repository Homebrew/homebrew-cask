cask 'hyperion-download-manager' do
  version '2.0.1'
  sha256 '02d255635fd5967efcb92ca33a25e85016819a8d9b28f92cf27c85a3d2606eca'

  url "https://www.hyperion-records.co.uk/Hyperion%20Download%20Manager-#{version}.dmg"
  name 'Hyperion Records Download Manager'
  homepage 'https://www.hyperion-records.co.uk/pages/downloadmanagerinfo.asp'

  app 'Hyperion Download Manager.app'
end
