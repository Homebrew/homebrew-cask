cask :v1 => 'lighting' do
  version '1.0.0'
  sha256 '6984903ef1c6ece3c277c2a88386e9f5f98c09b35beb9604ba42bd617cc05e43'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'
  license :gpl

  app 'Lighting.app'
end
