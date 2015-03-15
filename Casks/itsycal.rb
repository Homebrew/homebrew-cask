cask :v1 => 'itsycal' do
  version '0.9.0'
  sha256 'f67b2ada9d783e061bbf6790bbde9457cabfd5735a175ec9a3f4b218e2a25746'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
