class Ghc < Cask
  version '7.8.3-r0'
  sha256 '9123e9dd84e9957f47f2b80d642e9e100d2b5f6d8ac3e10615b153e91ca50d47'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  homepage 'http://ghcformacosx.github.io/'

  link 'ghc-7.8.3.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
