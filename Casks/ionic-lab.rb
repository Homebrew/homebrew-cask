cask 'ionic-lab' do
  version :latest
  sha256 :no_check

  # ionic-io-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://ionic-io-assets.s3.amazonaws.com/labs/IonicLab.dmg'
  name 'IonicLab'
  homepage 'http://lab.ionic.io/'

  app 'Ionic Lab.app'
end
