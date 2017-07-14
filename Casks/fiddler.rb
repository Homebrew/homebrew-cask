cask 'fiddler' do
  version :latest
  sha256 :no_check

  url 'https://www.telerik.com/docs/default-source/fiddler/fiddler-mac.zip'
  name 'Telerik Fiddler Proxy'
  homepage 'http://www.telerik.com/fiddler'

  depends_on cask: 'mono-mdk'

  app 'Fiddler.app'
end
