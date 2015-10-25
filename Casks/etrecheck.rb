cask :v1 => 'etrecheck' do
  version :latest
  sha256 :no_check

  url 'http://www.etresoft.com/download/EtreCheck.zip'
  name 'EtreCheck'
  homepage 'http://www.etresoft.com/etrecheck'
  license :gpl

  app 'EtreCheck.app'
end
