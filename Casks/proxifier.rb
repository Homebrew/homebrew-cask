cask :v1 => 'proxifier' do
  version :latest
  sha256 :no_check

  url 'http://www.proxifier.com/distr/ProxifierMac.zip'
  homepage 'http://www.proxifier.com/mac/'
  license :unknown    # todo: improve this machine-generated value

  app 'Proxifier.app'
end
