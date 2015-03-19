cask :v1 => 'ghc' do
  version '7.8.4-r0'
  sha256 '084f0eaf2807e67185ce44dd1a7a91c539df833b36fce307f3156c95b94afb9e'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  appcast 'https://github.com/ghcformacosx/ghc-dot-app/releases.atom'
  homepage 'http://ghcformacosx.github.io/'
  license :oss

  app "ghc-#{version.sub(/-.+/,'')}.app"
end
