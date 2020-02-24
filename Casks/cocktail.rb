cask 'cocktail' do
  if MacOS.version <= :mavericks
    version '7.9.1'
    sha256 'b8b5c37df3a2c44406f9fdf1295357d03b8fca6a9112b61401f0cca2b8e37033'

    url "https://www.maintain.se/downloads/sparkle/mavericks/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  elsif MacOS.version <= :yosemite
    version '8.9.2'
    sha256 'acc7d191313fa0eb4109ae56f62f73e7ed6685f7d7d438d5138b85d68e40edd8'

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  elsif MacOS.version <= :el_capitan
    version '9.7'
    sha256 'ca6b4a264ca60a08ff45761f82b0b6161cbe3412bd6cbeedd5dbecebc8d26712'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml'
  elsif MacOS.version <= :sierra
    version '10.9.1'
    sha256 'c41bdcff4e0a1bdf3b0b1dfa11e12de71acf64010c7dccfd337ec2f42ca7bd4f'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml'
  elsif MacOS.version <= :high_sierra
    version '11.7'
    sha256 'e1d8b4529963e94b8a5d710ee3dd75f15423701aead815da271d624b2c653278'

    url "https://www.maintain.se/downloads/sparkle/highsierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/highsierra/highsierra.xml'
  elsif MacOS.version <= :mojave
    version '12.4.2'
    sha256 'cae4d5f4eee8a37064290fddda584d4ce90add02dc7c66ec56c5842e5dc82c2b'

    url "https://www.maintain.se/downloads/sparkle/mojave/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/mojave/mojave.xml'
  else
    version '13.1'
    sha256 'b17590d02a479f30bd6984bf5aa3816aa10a233f84cb0789ba6e3e9c2d57424a'

    url "https://www.maintain.se/downloads/sparkle/catalina/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/catalina/catalina.xml'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'

  app 'Cocktail.app'
end
