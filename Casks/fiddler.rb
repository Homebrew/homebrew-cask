cask 'fiddler' do
  version :latest
  sha256 :no_check

  # telerik-fiddler.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://telerik-fiddler.s3.amazonaws.com/fiddler/fiddler-mac.zip'
  name 'Telerik Fiddler Proxy'
  homepage 'http://www.telerik.com/fiddler'

  depends_on cask: 'mono-mdk'

  app 'mono Fiddler.exe', target: 'Fiddler.app'
end
