cask :v1 => 'itsycal' do
  version '0.10.7'
  sha256 '8a0edc32f9188deec40a8d778014cbe65791d3172812543d7364eaca0130c898'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '7d51e019a96d671f4ae91c94d78ad2c166c2ed8163316bf5a8301ffc95816d00'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
