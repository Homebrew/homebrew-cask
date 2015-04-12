cask :v1 => 'fiddler' do
  version '4.4.5.0'
  sha256 '35ca5899d19269b24e7d648fbf6b5f20275075691392a122c93a2365bff70acd'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://ericlawrence.com/dl/InstallFiddler.dmg"
  name 'Telerik Fiddler Proxy'
  name 'Fiddler Proxy'
  name 'Fiddler'
  homepage 'http://www.telerik.com/fiddler'
  license :apache
  tags :vendor => 'Telerik'

  app 'Fiddler.app'
end
