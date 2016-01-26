cask 'ionic-lab' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://ionic-io-assets.s3.amazonaws.com/labs/IonicLab.dmg'
  name 'IonicLab'
  homepage 'http://lab.ionic.io/'
  license :gratis

  app 'Ionic Lab.app'
end
