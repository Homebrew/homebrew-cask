cask 'quantum' do
  version :latest
  sha256 :no_check

  # triplecheck.net was verified as official when first introduced to the cask
  url 'http://triplecheck.net/download/quantum-mac.zip'
  name 'Quantum'
  homepage 'http://triplecheck.tech/quantum/'

  app 'quantum.app'
end
