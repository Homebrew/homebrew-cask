cask 'gmvault' do
  version '1.9'
  sha256 'a48fb7fb90a7286a47d255a289e7636b1ac8f22f990fa5ce782e6077a6c9a45e'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/gaubert/gmvault-official-download/downloads/gmvault-v#{version}-macosx-intel.tar.gz"
  name 'Gmvault'
  homepage 'http://gmvault.org'
  license :gpl

  binary "gmvault-v#{version}/bin/gmvault"
end
