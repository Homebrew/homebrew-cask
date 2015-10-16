cask :v1 => 'itsycal' do
  version '0.10.6'
  sha256 '7887dd8b59ca15477aeb38bfff1ad28a7bcaa75c35b2fc2dbd811a68a4d421af'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '52ad07d2ef665cd20a10c3f7746d48f4ffc18b026fe5e54de88cfe557b6cfd3c'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
