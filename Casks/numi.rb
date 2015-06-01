cask :v1 => 'numi' do
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/com.dmitrynikolaev.numi/beta/Numi.zip'
  name 'Numi'
  homepage 'http://numi.io'
  license :unknown

  app 'Numi.app'
end
