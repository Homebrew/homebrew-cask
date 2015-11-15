cask :v1 => 'amethyst' do
  version '0.9.7'
  sha256 '99845c84a6a4e94be30a191b20a9abd754d01a21b3ea9c961438158223393a3c'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
