cask :v1 => 'pixate' do
  version :latest
  sha256 :no_check

  url 'http://www.pixate.com/downloads/Pixate.zip'
  homepage 'http://www.pixate.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Pixate.app'
end
