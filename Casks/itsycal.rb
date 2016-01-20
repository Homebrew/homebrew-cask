cask 'itsycal' do
  version '0.10.8'
  sha256 'f9d49a3b0cf30cb59109740e7c415cee880f345ecbfc9fc3b8eb98485f8752d2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          checkpoint: '1444fa57c853a15016c227497da0dcb78bda53f1724332047a6a5f0346ead3fa'
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
