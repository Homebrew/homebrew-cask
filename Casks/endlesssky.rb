cask 'endlesssky' do
  version '0.8.11'
  sha256 'c6a9a20bac8ef9bd4813f590d3125381a90bf15d41bdfda4e78e74c57654de9f'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '2802b6e9a84a8f2f9b246df12a3807d8c493d9730a24b49f838f14deae257186'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end
