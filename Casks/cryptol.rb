cask 'cryptol' do
  version '2.2.6'
  sha256 'ab6fc7167772f7a403df559626360c58b0162a48545657162758103ea0c86f3c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/GaloisInc/cryptol/releases/download/v#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  appcast 'https://github.com/GaloisInc/cryptol/releases.atom',
          :sha256 => 'a297a208be4d6a81e6bf0675fd8d204eb99ad3254b4c886d382d0707824c0a03'
  name 'Cryptol'
  homepage 'http://cryptol.net/'
  license :bsd
  gpg "#{url}.sig",
      :key_url => 'http://cryptol.net/files/Galois.asc'

  depends_on :cask => 'cvc4'

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"

  zap :delete => '~/.cryptol'

  caveats do
    files_in_usr_local
  end
end
