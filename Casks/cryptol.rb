cask :v1 => 'cryptol' do
  version '2.2.4'
  sha256 'a90a49101880980e472dbcd333568bbd5880fa33e998f2345701e0e15493f8a1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/GaloisInc/cryptol/releases/download/v#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  appcast 'https://github.com/GaloisInc/cryptol/releases.atom'
  gpg "#{url}.sig",
      :key_url => 'http://cryptol.net/files/Galois.asc'
  name 'Cryptol'
  homepage 'http://cryptol.net/'
  license :bsd

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"

  zap :delete => '~/.cryptol'

  depends_on :cask => 'cvc4'

  caveats do
    files_in_usr_local
  end
end
