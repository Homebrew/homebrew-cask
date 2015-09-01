cask :v1 => 'lighting' do
  version '1.1.0'
  sha256 '2911c29cf2e06df363edfb57e320e2d91d795e4596bd79ae0cd293e223b57bdc'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'
  license :gpl

  app 'Lighting.app'
end
