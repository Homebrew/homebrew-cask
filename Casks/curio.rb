cask :v1 => 'curio' do
  version :latest
  sha256 :no_check

  url 'http://zengobi.com/downloads/Curio.zip'
  homepage 'http://zengobi.com/products/curio/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Curio.app'
end
