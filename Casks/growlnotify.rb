cask 'growlnotify' do
  version '2.1'
  sha256 'eec601488b19c9e9b9cb7f0081638436518bce782d079f6e43ddc195727c04ca'

  # cachefly.net is the official download host per the vendor homepage
  url "https://growl.cachefly.net/GrowlNotify-#{version}.zip"
  name 'GrowlNotify'
  homepage 'http://growl.info/downloads'
  license :bsd

  pkg 'GrowlNotify.pkg'

  uninstall pkgutil: 'info.growl.growlnotify.*pkg'
end
