cask 'psi' do
  version '0.15'
  sha256 '76d50b5314d0a7d9f9a0a71d90e0f806f2da25436135dbd90bd1959286747742'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/psi/Psi-#{version}.dmg"
  name 'Psi'
  homepage 'http://psi-im.org/'
  license :gpl

  app 'Psi.app'
end
