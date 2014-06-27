class Ghc < Cask
  version '7.8.2-r6'
  sha256 '360ba6146fb927ac5492fee9df1bd426188d5c8656d663367a6f2893e28b5dcc'

  url 'https://github.com/ghcformacosx/ghc-dot-app/releases/download/v7.8.2-r6/ghc-7.8.2-r6.zip'
  homepage 'http://ghcformacosx.github.io/'

  link 'ghc-7.8.2.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
