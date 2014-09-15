class Proxifier < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.proxifier.com/distr/ProxifierMac.zip'
  homepage 'http://www.proxifier.com/mac/'

  app 'Proxifier.app'
end
