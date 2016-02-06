cask 'quantum' do
  version :latest
  sha256 :no_check

  url 'http://triplecheck.net/download/quantum-mac.zip'
  name 'Quantum'
  homepage 'http://triplecheck.net/quantum/'
  license :commercial

  app 'quantum.app'
end
