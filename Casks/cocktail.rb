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
    version '9.7'
    sha256 'ca6b4a264ca60a08ff45761f82b0b6161cbe3412bd6cbeedd5dbecebc8d26712'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            checkpoint: '7d3fd5bf0b5816bc3971adfea9e571619e589ee6c30c6fcd6f0c5a1de21026da'
  elsif MacOS.version == :sierra
    version '10.7'
    sha256 '3a95af784d20292a1c13facf8b2723d04b851be6b5588ccb04feb66fd662a3e1'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml',
            checkpoint: '0d23c39ce963bd9cb04b9e5abd3b83257514aa984a769a473c2925371dda860d'
  else
    version '11.5.1'
    sha256 'b3cb51e2cffe60c6d9d6c319af91a09c3ae9e71108e1e64a78cea6f7f2ad4f38'

    url "https://www.maintain.se/downloads/sparkle/highsierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/highsierra/highsierra.xml',
            checkpoint: '54a0357632e39ef388819be6ce846dacb6b7163340d3d7e3e14bb74f9dc4b77a'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'

  app 'Cocktail.app'
end
