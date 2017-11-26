cask 'nteract' do
  version '0.4.0'
  sha256 'a3ef74afb2bb7c44c0df41a41fb12c99895ca244cf4b96f1a46082b04b842e2f'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '3fcfea4a9441900b5c33cb7850c60beccc2349471f7693eea290c8a3306fff70'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
