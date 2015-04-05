cask :v1 => 'cryptol' do
  version '2.2.1'
  sha256 'f540f49ee982559f3a4baa34a489c969ac632ff6e1904b4fafcc7e609396f75d'

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
