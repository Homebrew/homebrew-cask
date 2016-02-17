cask 'gns3' do
  version '1.4.1'
  sha256 'd85924e331d480b5ae1f32ae2ba2980f3a9ccce2d928ee5141fbef753750813f'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'ac780fcc3e3ad41cb9698e14125c2b7703cb11d292a74bf096348ad71cd93ab7'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
