cask :v1 => 'numi' do
  version :latest
  sha256 :no_check

  url 'http://numi.io/static/files/Numi.zip'
  name 'Numi'
  homepage 'http://numi.io/'
  license :gratis

  app 'Numi.app'
end
