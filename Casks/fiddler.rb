cask :v1 => 'fiddler' do
  version :latest
  sha256 :no_check

  url 'http://ericlawrence.com/dl/InstallFiddler.dmg'
  name 'Telerik Fiddler Proxy'
  name 'Fiddler Proxy'
  name 'Fiddler'
  homepage 'http://www.telerik.com/fiddler'
  license :commercial
  tags :vendor => 'Telerik'
  
  depends_on :formula => 'mono'
  
  app 'Fiddler.app'
end
