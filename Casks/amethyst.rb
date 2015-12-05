cask :v1 => 'amethyst' do
  version '0.9.9'
  sha256 'fa05e3b623145abb21e0d676e317f3d09b594debce2d76065f99384283cbc4b5'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => '117a276b5a0db17918ae1e0b94424f0a5b79c1be36217c8504e1b1b4d7cdd48c'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
