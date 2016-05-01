cask 'gns3' do
  version '1.4.6'
  sha256 'a2d628213ffc7e234739e12e7ebb10c06bec78414355a2480fa00914826e417e'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '412d3b1b11530d7c3059a2d69055c42d19deedea76c40d300e7e11448c36e8c2'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
