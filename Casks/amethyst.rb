cask :v1 => 'amethyst' do
  version '0.9.5'
  sha256 '7f346ab0f200d110a0bc058e7ab590bb7dc0a5353e67b3251b5b316c49b60c4f'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => '51b673f6806f2343074ff53aab83e3d4c74d23befccf3882c9db72679d1d8a1a'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
