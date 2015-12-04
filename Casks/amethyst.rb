cask :v1 => 'amethyst' do
  version '0.9.8'
  sha256 '9402d5e681d985b7bdb76e0ca9648b88022972b073179bb73ac9ec782a7215b0'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => 'c63267cd84062c7458b18eef9a278abd0bbed2c6ae73b73a3d782d09a361ad1b'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
