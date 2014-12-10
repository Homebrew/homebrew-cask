cask :v1 => 'curio' do
  version :latest
  sha256 :no_check

  url 'http://zengobi.com/downloads/Curio.zip'
  homepage 'http://zengobi.com/products/curio/'
  license :unknown    # todo: improve this machine-generated value

  app 'Curio.app'
end
