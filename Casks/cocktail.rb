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
    version '9.4.2'
    sha256 'cd03c89532f9b08d6b3fb0c86a08307212b7f70f564c50589825f66ccf11fff3'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            checkpoint: 'edc259968e1d28f3197019000270363a7c72ecb4c9bb163f83908382b0736995'
  else
    version '10.2'
    sha256 '1cd03509ced28734684b0ced16c4bdada9303262fe2f8e040059ce0ee91cf8cf'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml',
            checkpoint: 'ca387cff4dfe3dbe0f1f0eb620292befe098d1704f4f4ec4e8aa73ee81fc01b7'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'

  app 'Cocktail.app'
end
