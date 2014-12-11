cask :v1 => 'growlnotify' do
  version '2.1'
  sha256 'eec601488b19c9e9b9cb7f0081638436518bce782d079f6e43ddc195727c04ca'

  url "https://growl.cachefly.net/GrowlNotify-#{version}.zip"
  homepage 'http://growl.info/downloads'
  license :unknown    # todo: improve this machine-generated value

  pkg 'GrowlNotify.pkg'

  uninstall :pkgutil => 'info.growl.growlnotify.*pkg'
end
