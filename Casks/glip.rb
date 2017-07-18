cask 'glip' do
  version :latest
  sha256 :no_check

  # downloads.ringcentral.com was verified as official when first introduced to the cask
  url 'https://downloads.ringcentral.com/glip/rc/GlipForMac'
  name 'Glip'
  homepage 'https://www.glip.com/'

  app 'Glip.app'
end
