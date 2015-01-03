cask :v1 => 'cryptol' do
  version '2.1.0'
  sha256 '3d2ee4a8c7c4284458bbd5f07da52d9c3fae8ddd46faeafb7779dfa07f5cdd63'

  url "https://github.com/GaloisInc/cryptol/releases/download/v#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  gpg "#{url}.sig",
      :key_url => 'http://cryptol.net/files/Galois.asc'
  homepage 'http://cryptol.net/'
  license :bsd

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"
  binary "cryptol-#{version}-MacOSX-64/lib/Cryptol.cry", :target => '/usr/local/lib/Cryptol.cry'

  depends_on :cask => 'cvc4'

  caveats do
    files_in_usr_local
    <<-EOS.undent
      Cryptol depends on CVC4 (http://cvc4.cs.nyu.edu/).
      The CVC4 binary must be in your PATH.
    EOS
  end
end
