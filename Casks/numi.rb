cask 'numi' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.dmitrynikolaev.numi/Numi.zip'
  name 'Numi'
  homepage 'https://numi.io/'
  license :gratis

  app 'Numi.app'
end
