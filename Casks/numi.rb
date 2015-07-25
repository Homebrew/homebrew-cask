cask :v1 => 'numi' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.dmitrynikolaev.numi/beta/Numi.zip'
  name 'Numi'
  homepage 'http://numi.io/'
  license :gratis

  app 'Numi.app'
end
