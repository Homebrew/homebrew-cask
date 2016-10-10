cask 'etrecheck' do
  version :latest
  sha256 :no_check

  url 'https://www.etresoft.com/download/EtreCheck.zip'
  name 'EtreCheck'
  homepage 'https://www.etresoft.com/etrecheck'

  app 'EtreCheck.app'
end
