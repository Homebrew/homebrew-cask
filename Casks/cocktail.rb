cask 'cocktail' do
  if MacOS.release == :snow_leopard
    version '5.1'
    sha256 '630fc5236e95d5ec36c0de4b487f8ece76d8f02ecd00ec4b37124ddd0eed0f34'

    url "http://www.maintain.se/downloads/sparkle/snowleopard/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/snowleopard/nowleopard.xml',
            :sha256 => 'e8c8ca4c088e9282bc6d7dfafb20768203009c1ecd17e6c4a691801ebec16c2f'
  elsif MacOS.release == :lion
    version '5.6'
    sha256 '9fa8ff2ade1face0a1a36baf36cfa384535179b261716c18538b0102f281ee60'

    url "http://www.maintain.se/downloads/sparkle/lion/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/lion/lion.xml',
            :sha256 => '1117376e455525f4c43342d591570ed39a119e1f2c07575f81973e4c7054aaba'
  elsif MacOS.release == :mountain_lion
    version '6.9'
    sha256 '309bac603a6ded301e9cc61b32bb522fc3a5208973cbd6c6f1a09d0e2c78d1e6'

    url "http://www.maintain.se/downloads/sparkle/mountainlion/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml',
            :sha256 => '70f7e4a5ba77f1b1c410708d626ee658e8212ad4d119b741105f817e69a76dc3'
  elsif MacOS.release == :mavericks
    version '7.9.1'
    sha256 'b8b5c37df3a2c44406f9fdf1295357d03b8fca6a9112b61401f0cca2b8e37033'

    url "http://www.maintain.se/downloads/sparkle/mavericks/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml',
            :sha256 => 'fe406d5c85657ea4fb72d28c28f6790624d09c6a4b47bacc25c00b5f3da20ebb'
  elsif MacOS.release == :yosemite
    version '8.8'
    sha256 'd179c3ac3e3a56d2db2e9715f62051b6a1835619bea975372442613ee260f252'

    url "http://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml',
            :sha256 => '54bfad1c495847de71874df8c26dd7da1e2e9cef95787e135a63f6b3bb637833'
  else
    version '9.2'
    sha256 '3edfa02b9b20a9d17c33be7bc7ca902f625ac96fe0d115d920dfb7ace9c3d5d0'

    url "http://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'http://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            :sha256 => 'a60aabe0052d8331f7a57e84d32837cfda3005985c77d88bc081d05df4bcc9b0'
  end

  name 'Cocktail'
  homepage 'http://www.maintain.se/cocktail/'
  license :commercial

  app 'Cocktail.app'
end
