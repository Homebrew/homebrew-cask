cask 'cryptol' do
  version '2.3.0'
  sha256 '734e2781aaa3d5cceb59cad12aa7592c90db9920785b71d052761b0899841641'

  # github.com/GaloisInc/cryptol was verified as official when first introduced to the cask
  url "https://github.com/GaloisInc/cryptol/releases/download/#{version}/cryptol-#{version}-MacOSX-64.tar.gz"
  appcast 'https://github.com/GaloisInc/cryptol/releases.atom',
          checkpoint: '58a2b57ae6c2c9775b4025228bbf92caad8f9b489b4fc36d185ffe0bc43d4b85'
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
