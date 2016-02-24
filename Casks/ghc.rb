cask 'ghc' do
  version '7.10.3-r0'
  sha256 '51080b4c4df722497ec5e48138fff2f461e2eee32539889fdedf99b16f485096'

  # github.com/ghcformacosx/ghc-dot-app was verified as official when first introduced to the cask
  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  appcast 'https://github.com/ghcformacosx/ghc-dot-app/releases.atom',
          checkpoint: '9de76eb2e6ad24851c66c3f4c1ecd28a484755d2712630ebff0d957b7e1d60e5'
  name 'GHC'
  homepage 'https://ghcformacosx.github.io/'
  license :oss

  app "ghc-#{version.sub(%r{-.+}, '')}.app"
end
