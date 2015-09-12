cask :v1 => 'lighting' do
  version '1.1.2'
  sha256 '43b5314d1ee6261b4675711773c5d59a5d028a51b2d4d1fb3274d1caa443054b'

  url "https://github.com/tatey/Lighting/releases/download/#{version}/Lighting-#{version}.zip"
  appcast 'https://github.com/tatey/Lighting/releases.atom'
  name 'Lighting'
  homepage 'https://github.com/tatey/Lighting'
  license :gpl

  app 'Lighting.app'
end
