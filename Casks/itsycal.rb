cask :v1 => 'itsycal' do
  version '0.8.10'
  sha256 '2cfa08066722a13b994559f45b9d01bba1ff02e98c6797f2fc7c93344747093b'

  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  homepage 'http://www.mowglii.com/itsycal/'
  license :unknown

  app "Itsycal #{version}/Itsycal.app"
end
