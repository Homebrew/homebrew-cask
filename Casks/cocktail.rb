cask 'cocktail' do
  if MacOS.version == :mountain_lion
    version '6.9'
    sha256 '309bac603a6ded301e9cc61b32bb522fc3a5208973cbd6c6f1a09d0e2c78d1e6'

    url "https://www.maintain.se/downloads/sparkle/mountainlion/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml'
  elsif MacOS.version == :mavericks
    version '7.9.1'
    sha256 'b8b5c37df3a2c44406f9fdf1295357d03b8fca6a9112b61401f0cca2b8e37033'

    url "https://www.maintain.se/downloads/sparkle/mavericks/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  elsif MacOS.version == :yosemite
    version '8.9.2'
    sha256 'acc7d191313fa0eb4109ae56f62f73e7ed6685f7d7d438d5138b85d68e40edd8'

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  elsif MacOS.version == :el_capitan
    version '9.7'
    sha256 'ca6b4a264ca60a08ff45761f82b0b6161cbe3412bd6cbeedd5dbecebc8d26712'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml'
  elsif MacOS.version == :sierra
    version '10.8'
    sha256 '54fb6665cd43f4fb1a536e475fe71d6f1ca12ff547948a35e6625f2fb7997578'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml'
  elsif MacOS.version == :high_sierra
    version '11.6.3'
    sha256 '6a00bae70a5befa7fb9467c1320e8818939e5f074deadd70177021fbf4694b07'

    url "https://www.maintain.se/downloads/sparkle/highsierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/highsierra/highsierra.xml'
  else
    version '12.0.2'
    sha256 '6a00bae70a5befa7fb9467c1320e8818939e5f074deadd70177021fbf4694b07'

    url "https://www.maintain.se/downloads/sparkle/mojave/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mojave/mojave.xml'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'

  app 'Cocktail.app'
end
