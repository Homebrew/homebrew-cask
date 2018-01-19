cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.1.3'
  sha256 '6decdc79f919bf695dbd94f6d4763cf7b87be0bb7895a943bd94a33f0ca1f9d5'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'fb0f96ad352233fac7e29acf785cd808fba9931b3e705caa6320a42142cff011'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
