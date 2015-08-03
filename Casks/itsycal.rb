cask :v1 => 'itsycal' do
  version '0.10.3'
  sha256 '0e0504a52e5a6a4e34431965e55b87ffc0ed64273106ac69f0a966e742bbf2f6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '248c8fdb29c48c0f727aa6ba3883000c6a5732d35c4edb9714d46593288a55d2'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
