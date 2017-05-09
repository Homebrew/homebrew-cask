cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.0.0'
  sha256 'a1ca4e436cd2486e740dc6bf32804e20ba2356955975e6907b288e84540ce377'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '588acf941d0d8e20a7b329fa118453ad93ef157d245e9a5bd696a818ef73d941'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
