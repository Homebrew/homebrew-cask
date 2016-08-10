cask 'snappy' do
  version :latest
  sha256 :no_check

  url 'http://go-snappy.com/Snappy.zip'
  name 'Snappy'
  homepage 'http://go-snappy.com'
  license :gratis

  app 'Snappy.app'
end
