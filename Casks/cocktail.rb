cask :v1 => 'cocktail' do
  if MacOS.release == :snow_leopard
    version '5.1'
    sha256 '630fc5236e95d5ec36c0de4b487f8ece76d8f02ecd00ec4b37124ddd0eed0f34'

    url "http://www.maintain.se/downloads/sparkle/snowleopard/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/snowleopard/snowleopard.xml'
  elsif MacOS.release == :lion
    version '5.6'
    sha256 '9fa8ff2ade1face0a1a36baf36cfa384535179b261716c18538b0102f281ee60'

    url "http://www.maintain.se/downloads/sparkle/lion/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/lion/lion.xml'
  elsif MacOS.release == :mountain_lion
    version '6.9'
    sha256 '309bac603a6ded301e9cc61b32bb522fc3a5208973cbd6c6f1a09d0e2c78d1e6'

    url "http://www.maintain.se/downloads/sparkle/mountainlion/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml'
  elsif MacOS.release == :mavericks
    version '7.9.1'
    sha256 'b8b5c37df3a2c44406f9fdf1295357d03b8fca6a9112b61401f0cca2b8e37033'

    url "http://www.maintain.se/downloads/sparkle/mavericks/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  elsif MacOS.release == :yosemite
    version '8.6'
    sha256 '847f199c18d0dccec6590b4e1820a358672ba789b7e8586c20376656db84b8d7'

    url "http://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  else
    version '9.0'
    sha256 '4c5760519bd9ac544050a70df3c63b2367be8e37b52a68a88ab03cc2c4dcdad4'

    url "http://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml'
  end

  name 'Cocktail'
  homepage 'http://www.maintain.se/cocktail/'
  license :commercial

  app 'Cocktail.app'
end
