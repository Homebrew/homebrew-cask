cask :v1 => 'proxifier' do
  version :latest
  sha256 :no_check

  url 'https://www.proxifier.com/distr/ProxifierMac.zip'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Proxifier.app'
end
