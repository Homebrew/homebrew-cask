cask 'proxifier' do
  version :latest
  sha256 :no_check

  url 'https://www.proxifier.com/distr/ProxifierMac.zip'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'
  license :commercial

  app 'Proxifier.app'
end
