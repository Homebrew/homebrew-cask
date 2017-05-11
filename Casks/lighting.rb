cask 'lighting' do
  version '1.1.5'
  sha256 '228ce357f1c6cd916cbd37c5fd80e7e63b1100bfcf26b714d51c3f16ad2e0ce6'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom',
          checkpoint: '180bbccc381cc1a7dfc42e6538845d1b3cec15419398ff1116b995d97543176e'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'

  app 'Lighting.app'
end
