cask :v1 => 'itsycal' do
  version '0.9.0'
  sha256 '42f25ddab7360235482f1afd802592bdc3231dfe46220e263d259efd59a20781'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
