cask :v1 => 'clonk' do
  version :latest
  sha256 :no_check

  url 'http://www.clonkx.de/rage/cr_full_mac.zip'
  homepage 'http://www.clonk.de/cr.php'
  license :unknown    # todo: improve this machine-generated value

  app 'Clonk.app'
end
