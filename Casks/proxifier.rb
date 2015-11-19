cask :v1 => 'proxifier' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :yosemite
    url 'https://www.proxifier.com/distr/ProxifierMac.zip'
  else
    url 'https://www.proxifier.com/distr/ProxifierMacBeta.zip'
  end

  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'
  license :commercial

  app 'Proxifier.app'

  if MacOS.release == :el_capitan
    caveats <<-EOS.undent
      #{token} stable version is incompatible with OS X 10.11 El Capitan.
      Beta version has been installed instead.
    EOS
  end
end
