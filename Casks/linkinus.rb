cask :v1 => 'linkinus' do
  version :latest
  sha256 :no_check

  url 'http://conceited.net/downloads/Linkinus.zip'
  homepage 'http://conceited.net/products/linkinus'
  license :unknown    # todo: improve this machine-generated value

  app 'Linkinus.app'
end
