cask :v1 => 'ghc' do
  version '7.10.1-r0'
  sha256 '0daeeea37bad9cfb14d0240a531ced4f6cd8de2ceb5ec6f9328c5888f8c8abe0'

  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  appcast 'https://github.com/ghcformacosx/ghc-dot-app/releases.atom'
  name 'GHC'
  homepage 'https://ghcformacosx.github.io/'
  license :oss

  app "ghc-#{version.sub(/-.+/,'')}.app"
end
