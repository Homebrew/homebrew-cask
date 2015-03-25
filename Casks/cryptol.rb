cask :v1 => 'cryptol' do
  version '2.2.0'
  sha256 'c6f942461de96daf2d4c4ea2e46de0f5f2b603e24a7bcaeda345f4ac9afc48d1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/GaloisInc/cryptol/releases/download/v#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  appcast 'https://github.com/GaloisInc/cryptol/releases.atom'
  gpg "#{url}.sig",
      :key_url => 'http://cryptol.net/files/Galois.asc'
  homepage 'http://cryptol.net/'
  license :bsd

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"

  zap :delete => '~/.cryptol'

  depends_on :cask => 'cvc4'

  caveats do
    files_in_usr_local
  end
end
