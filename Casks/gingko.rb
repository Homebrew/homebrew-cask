cask 'gingko' do
  version '2.0.1'
  sha256 '53301cdf8599255eea58ae37c85b08ecd02106028d44a6ffb611a3a40d05f339'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom',
          checkpoint: '043659b21524797c6535a6e6779555a76c9f637afa40c535847494052e3b20fe'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap delete: [
                '~/Library/Application Support/Gingko'
              ]
end
