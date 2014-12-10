cask :v1 => 'arq' do
  version :latest
  sha256 :no_check

  url 'http://www.haystacksoftware.com/arq/Arq.zip'
  homepage 'http://www.haystacksoftware.com/arq/'
  license :unknown    # todo: improve this machine-generated value

  app 'Arq.app'
end
