cask 'gns3' do
  version '1.4.1'
  sha256 'd85924e331d480b5ae1f32ae2ba2980f3a9ccce2d928ee5141fbef753750813f'

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  name 'GNS3'
  homepage 'https://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
