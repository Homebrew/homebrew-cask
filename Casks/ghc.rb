cask 'ghc' do
  version '7.10.3-r1'
  sha256 '4daf43e58da7288dbbc90b5a9b4cfcdab8b3b1d7f09941fab61d45a660e837c4'

  # github.com/ghcformacosx/ghc-dot-app was verified as official when first introduced to the cask
  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  appcast 'https://github.com/ghcformacosx/ghc-dot-app/releases.atom',
          checkpoint: 'b58f9a3b2f5855a120d5fc42d42faea139f4da6c6c550b912b0e6868899c6664'
  name 'GHC'
  homepage 'https://ghcformacosx.github.io/'
  license :oss

  app "ghc-#{version.sub(%r{-.+}, '')}.app"
end
