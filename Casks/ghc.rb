cask 'ghc' do
  version '7.10.2-r0'
  sha256 'b581a90ca6b6cf3c6f94304aac8b9018d95fa15e7b18c168efa434def1a249e5'

  # github.com/ghcformacosx/ghc-dot-app was verified as official when first introduced to the cask
  url "https://github.com/ghcformacosx/ghc-dot-app/releases/download/v#{version}/ghc-#{version}.zip"
  appcast 'https://github.com/ghcformacosx/ghc-dot-app/releases.atom',
          checkpoint: '135574a1f7a6be02316f69400e55e467d1b9daec428ec380942efd791f387c23'
  name 'GHC'
  homepage 'https://ghcformacosx.github.io/'
  license :oss

  app "ghc-#{version.sub(%r{-.+}, '')}.app"
end
