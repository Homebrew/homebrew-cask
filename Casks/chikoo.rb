cask 'chikoo' do
  version '1.1'
  sha256 '05efeaf4bc2d00f5fc83df4d17a226d205bfe8cf895111a748a1ecb87fb686ff'

  url "https://download.codingturtle.com/download-files/chikoo/chikoo-#{version}.zip"
  appcast 'https://download.codingturtle.com/appcast/chikoo/11000',
          checkpoint: 'af050d033356ae59b5bfc002faeb289d7dc6632f6bd8ac6623c5ecd9af2ec6f8'
  name 'Chikoo'
  homepage 'https://codingturtle.com/chikoo'

  app 'Chikoo.app'
end
