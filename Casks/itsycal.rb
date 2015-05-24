cask :v1 => 'itsycal' do
  version '0.10.0'
  sha256 '3f926981a4cf8b862d15b7496961e4b07a1cbb7f6f06af111e7d61506e5963b2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '9497668c81ab21b9e3021774659315e96c797e77a5a6c0bf037bc3828dec335b'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
