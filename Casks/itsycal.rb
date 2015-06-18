cask :v1 => 'itsycal' do
  version '0.10.1'
  sha256 '901cb1bbba2aa0adcbcba75ad1b36ec315367a956acbd9fa964be6df5321ca49'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '9497668c81ab21b9e3021774659315e96c797e77a5a6c0bf037bc3828dec335b'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
