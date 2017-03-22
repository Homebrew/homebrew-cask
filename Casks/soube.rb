cask 'soube' do
  version '1.3.2'
  sha256 'a6fccfdd425ac5d237a3a2f80d517baf14c6ec1d758b9d7bab04e0044ce8c69b'

  # github.com/DracotMolver/Soube was verified as official when first introduced to the cask
  url "https://github.com/DracotMolver/Soube/releases/download/#{version}/soube-#{version}.dmg"
  appcast 'https://github.com/DracotMolver/Soube/releases.atom',
          checkpoint: '818ba8cacafa664ca1561737fbd6e3499cce1bff39525840792974b12bd8ead2'
  name 'Soube'
  homepage 'http://soube.diegomolina.cl/'

  app 'soube.app'
end
