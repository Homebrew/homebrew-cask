cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.2'
  sha256 'dc355aba87d897dbd5d10706232aa9d35195515436261157bcf823f90dba5d98'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '1d9a8fe5e093cd50cefeeb96e5faa15218ab3e6ee8b0e2eed92555513d2738b0'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
