cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.5.2'
  sha256 'a6ef73ba5e018fb22ed88fc07d71597b993878d3cb88ba8f334226ddf23e2d16'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '38d57e50a965264786265131c4fee2d397a31db5bbd51f9ed8188805d5b324f2'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
