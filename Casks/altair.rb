cask 'altair' do
  version '1.5.1'
  sha256 'cf67b1bb34c3cfb0c10e7d5be791bed91e7b120cec24f784950f0bd0241d799f'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-darwin-x64-#{version}.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: '8bc9bec851fff81dbe9c1e0c27108445003488516eafd9e5e5ca4cbe3de80913'
  name 'Altair GraphQL Client'
  homepage 'https://altair.sirmuel.design/'

  app 'altair.app'
end
