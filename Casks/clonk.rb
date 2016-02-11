cask 'clonk' do
  version :latest
  sha256 :no_check

  # clonkx.de was verified as official when first introduced to the cask
  url 'http://www.clonkx.de/rage/cr_full_mac.zip'
  name 'Clonk Rage'
  homepage 'http://www.clonk.de/cr.php'
  license :oss

  app 'Clonk.app'
end
