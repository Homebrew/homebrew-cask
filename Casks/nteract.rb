cask 'nteract' do
  version '0.22.0'
  sha256 '0c84c73d6cca925ccfb4f98f6362af9bbe8ed80b10ee680e2b1ca0f9d47b64c1'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
