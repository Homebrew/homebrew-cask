cask :v1 => 'etrecheck' do
  version :latest
  sha256 :no_check

  url 'http://www.etresoft.com/download/EtreCheck.zip'
  homepage 'http://www.etresoft.com/etrecheck'
  license :unknown    # todo: improve this machine-generated value

  app 'EtreCheck.app'
end
