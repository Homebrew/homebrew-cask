cask 'fiddler' do
  version :latest
  sha256 :no_check

  # ericlawrence.com was verified as official when first introduced to the cask
  url 'http://ericlawrence.com/dl/InstallFiddler.dmg'
  name 'Telerik Fiddler Proxy'
  homepage 'https://www.telerik.com/fiddler'

  depends_on cask: 'mono-mdk'

  app 'Fiddler.app'
end
