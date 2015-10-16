cask :v1 => 'clonk' do
  version :latest
  sha256 :no_check

  # clonkx.de is the official download host per the vendor homepage
  url 'http://www.clonkx.de/rage/cr_full_mac.zip'
  name 'Clonk Rage'
  homepage 'http://www.clonk.de/cr.php'
  license :oss

  app 'Clonk.app'
end
