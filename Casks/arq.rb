cask :v1 => 'arq' do
  version :latest
  sha256 :no_check

  url 'http://www.haystacksoftware.com/arq/Arq.zip'
  name 'Arq'
  homepage 'http://www.haystacksoftware.com/arq/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Arq.app'
end
