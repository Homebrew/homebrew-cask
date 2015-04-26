cask :v1 => 'itsycal' do
  version '0.9.2'
  sha256 '0019f05fbed122e01eed73d64b70e8b1ba03ce9185c1ce9ef49731bdb418ae0a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
