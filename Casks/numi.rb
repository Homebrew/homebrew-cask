cask 'numi' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.dmitrynikolaev.numi/Numi.zip'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
