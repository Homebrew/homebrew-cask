cask :v1 => 'linkinus' do
  version :latest
  sha256 :no_check

  url 'http://conceited.net/downloads/Linkinus.zip'
  name 'Linkinus'
  homepage 'http://conceited.net/products/linkinus'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Linkinus.app'
end
