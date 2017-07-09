cask 'lighting' do
  version '1.1.6'
  sha256 'd526872a51249479795ce6cc8684c123d7c288f6bfdf4910d05a3b5703a43386'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom',
          checkpoint: '721c6a4a4a9f2f0819dd63ee5e08625e3841042448d9c37e455755abee1e846e'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'

  app 'Lighting.app'
end
