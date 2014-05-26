class Ghc < Cask
  url 'https://github.com/ghcformacosx/ghc-dot-app/releases/download/v7.8.2-r2/ghc-7.8.2-r2.zip'
  homepage 'http://ghcformacosx.github.io/'
  version '7.8.2-r2'
  sha256 '7e9de6d9d772f42ab0b31bc234de86ebe302d5bd3f0c057253377950e8020197'
  link 'ghc-7.8.2.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
