cask :v1 => 'ghc' do
  version '7.8.3-r1'
  sha256 '4f48e373f3fa682c8c29e2128038c040e69d7852a8529173f53105027199c21c'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  homepage 'http://ghcformacosx.github.io/'
  license :oss

  app 'ghc-7.8.3.app'
  caveats 'To add GHC to your PATH, launch the app and follow the included instructions.'
end
