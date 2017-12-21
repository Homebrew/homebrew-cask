cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.0'
  sha256 '681547dc725a0f1dbe708afa3d309a40cb11ba8010adb453bef24c414ea1d655'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'd769daa82fdfdeb8750b7a9f0ba4d1b5f1b835edc1f7b59ff5b029caaedf6a11'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
