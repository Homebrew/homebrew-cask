cask 'lighting' do
  version '1.1.5'
  sha256 '228ce357f1c6cd916cbd37c5fd80e7e63b1100bfcf26b714d51c3f16ad2e0ce6'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom',
          checkpoint: '1578b1c7d4848473d239edbe356a208b439b784242619436216f62f45d74e65c'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'
  license :gpl

  app 'Lighting.app'
end
