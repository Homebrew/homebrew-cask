cask 'nteract' do
  version '0.21.0'
  sha256 'b5a97dabcea03c228ff74f76af4e9fb0c78b2e2a88283e0d5b7653b50fe76c76'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
