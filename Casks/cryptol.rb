cask 'cryptol' do
  version '2.4.0'
  sha256 'a643ba63920cb4a7f119cc9432ac1de6e8c309c0656f984dd5826b19c7b48963'

  # github.com/GaloisInc/cryptol was verified as official when first introduced to the cask
  url "https://github.com/GaloisInc/cryptol/releases/download/#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  appcast 'https://github.com/GaloisInc/cryptol/releases.atom',
          checkpoint: '40789a770eae4e9c8ddde82cc49f2f9c9a0117192dd478249acf7e12cf588275'
  name 'Cryptol'
  homepage 'http://cryptol.net/'
  license :bsd
  gpg "#{url}.sig",
      key_url: 'http://cryptol.net/files/Galois.asc'

  depends_on cask: 'cvc4'

  binary "cryptol-#{version}-MacOSX-64/bin/cryptol"

  zap delete: '~/.cryptol'

  caveats do
    files_in_usr_local
  end
end
