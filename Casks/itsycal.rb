cask :v1 => 'itsycal' do
  version '0.10.2'
  sha256 'e630c7b92ba81b613021dc6de3ef092cb25b6940e03971796b68aca39e8cb33c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '248c8fdb29c48c0f727aa6ba3883000c6a5732d35c4edb9714d46593288a55d2'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
