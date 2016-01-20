cask 'fiddler' do
  version :latest
  sha256 :no_check

  url 'http://ericlawrence.com/dl/InstallFiddler.dmg'
  name 'Telerik Fiddler Proxy'
  homepage 'http://www.telerik.com/fiddler'
  license :commercial

  depends_on cask: 'mono-mdk'

  app 'Fiddler.app'
end
