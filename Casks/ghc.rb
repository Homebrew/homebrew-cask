class Ghc < Cask
  version '7.8.2-r8'
  sha256 '48af1947cca885e2ac471e4185bcde55c6651154c4e2e98951dbf360a2855ea0'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  homepage 'http://ghcformacosx.github.io/'

  link 'ghc-7.8.2.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
