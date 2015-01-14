cask :v1 => 'itsycal' do
  version '0.8.12'
  sha256 '1b138d7ddce1ac725c7fd0146225dd50f1bad90b62cf727fe89c636c4281e697'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app "Itsycal.app"
end
