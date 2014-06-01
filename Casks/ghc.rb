class Ghc < Cask
  url 'https://github.com/ghcformacosx/ghc-dot-app/releases/download/v7.8.2-r5/ghc-7.8.2-r5.zip'
  homepage 'http://ghcformacosx.github.io/'
  version '7.8.2-r5'
  sha256 '05f42227eae3905f19fe17cf11af469c3673df3fd48f1239ddfb2f2c9ee8e083'
  link 'ghc-7.8.2.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
