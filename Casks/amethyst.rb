cask :v1 => 'amethyst' do
  version '0.9.5'
  sha256 '7f346ab0f200d110a0bc058e7ab590bb7dc0a5353e67b3251b5b316c49b60c4f'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'http://ianyh.com/amethyst/appcast.xml',
          :sha256 => '89f4aa8866df077e3da88eb1636334093190bc1286cfee52960a29ebf3f05bc8'
  homepage 'http://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
