cask :v1 => 'psi' do
  version '0.15'
  sha256 '76d50b5314d0a7d9f9a0a71d90e0f806f2da25436135dbd90bd1959286747742'

  url "https://downloads.sourceforge.net/sourceforge/psi/Psi-#{version}.dmg"
  homepage 'http://psi-im.org/'
  license :oss

  app 'Psi.app'
end
