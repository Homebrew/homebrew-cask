cask 'cocktail' do
  if MacOS.version == :mountain_lion
    version '6.9'
    sha256 '309bac603a6ded301e9cc61b32bb522fc3a5208973cbd6c6f1a09d0e2c78d1e6'

    url "https://www.maintain.se/downloads/sparkle/mountainlion/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml',
            checkpoint: '916ed186f168a0ce5072beccb6e17f6f1771417ef3769aabff46d348f79b4c66'
  elsif MacOS.version == :mavericks
    version '7.9.1'
    sha256 'b8b5c37df3a2c44406f9fdf1295357d03b8fca6a9112b61401f0cca2b8e37033'

    url "https://www.maintain.se/downloads/sparkle/mavericks/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml',
            checkpoint: '9a81f957ef6be7894a7ee7bd68ce37c4b5c6062560c9ef6c708c1cb3270793cc'
  elsif MacOS.version == :yosemite
    version '8.9.2'
    sha256 'acc7d191313fa0eb4109ae56f62f73e7ed6685f7d7d438d5138b85d68e40edd8'

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml',
            checkpoint: 'ffe079c9b71d0f356c8a4d45ecf4f5a50e1d284c972b0a1e5cf92234d7a1010e'
  elsif MacOS.version == :el_capitan
    version '9.6'
    sha256 'c399be6b837482cb5ae80bb1f40a6e5cd39ff62179698c277a67122062c8ee50'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            checkpoint: 'caf773ffc53978e4d0469056f0822c5acb9d85fc0ae1f43c51732c7e1dccfcca'
  else
    version '10.3.4'
    sha256 '9fe03db0378f3b6ed942344bd8cc9827b905a78b2f48ff1e949615a8c33617b7'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml',
            checkpoint: '852e60717d789f9b01a436949e0bfc90a23709b9f3f0afd6a02f61d8f77b4288'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'

  app 'Cocktail.app'
end
