cask :v1 => 'cryptol' do
  version '2.0.0'
  sha256 '19b3c24390ccb66584f42f34fed91cefc12f667879ab0228cdf806016bcd53c4'

  url "https://github.com/GaloisInc/cryptol/releases/download/v#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  gpg "#{url}.sig",
      :key_url => 'http://cryptol.net/files/Galois.asc'
  homepage 'http://cryptol.net/'
  license :bsd

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"
  binary "cryptol-#{version}-MacOSX-64/lib/Cryptol.cry", :target => '/usr/local/lib/Cryptol.cry'

  caveats do
    files_in_usr_local
    <<-EOS.undent
      Cryptol depends on CVC4 (http://cvc4.cs.nyu.edu/).
      The CVC4 binary must be in your PATH.
    EOS
  end
end
