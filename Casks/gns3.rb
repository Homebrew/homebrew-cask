cask 'gns3' do
  version '1.4.5'
  sha256 'd5ad546ea5270b78af82e383dbc2db2104280938e8264f068a1183b81cd249b6'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: '3b7752a0853c2e47ea6ba7e46498d5fd3569a39c83a38e18916731535b43684b'
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
