cask 'nteract' do
  version '0.3.3'
  sha256 '77b568f8eafce484a0694794d591b265633cfa62df765f3aaaa7664c8cea4716'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '83e578730434294f3d77f253e5e56b7e2590890fccc4b9f42d811b5fdfe35940'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
