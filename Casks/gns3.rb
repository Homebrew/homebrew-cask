cask 'gns3' do
  version '1.4.2'
  sha256 'd65728ef2d4eece9aa2c20cff621557b057cc33fa9203e6b1c182b36089cb123'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '9f3b5878b56e227b1e25651ebf0824e7e95bcfda6e1c3a19f88b109e0ac8b128'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
