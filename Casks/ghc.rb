class Ghc < Cask
  version '7.8.2-r7'
  sha256 '88acffb04d7aae7c0649b8eb2cab2483c69886d577b984f91a356fd5715f29af'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  homepage 'http://ghcformacosx.github.io/'

  link 'ghc-7.8.2.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
