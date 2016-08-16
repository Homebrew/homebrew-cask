cask 'cocktail' do
  if MacOS.version == :snow_leopard
    version '5.1'
    sha256 '630fc5236e95d5ec36c0de4b487f8ece76d8f02ecd00ec4b37124ddd0eed0f34'

    url "https://www.maintain.se/downloads/sparkle/snowleopard/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/snowleopard/snowleopard.xml',
            checkpoint: '3fb0fdcd252f0d0898076a66c3ad3ef045590a82abc9c9789bc1d7fdd0dc21f0'
  elsif MacOS.version == :lion
    version '5.6'
    sha256 '9fa8ff2ade1face0a1a36baf36cfa384535179b261716c18538b0102f281ee60'

    url "https://www.maintain.se/downloads/sparkle/lion/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/lion/lion.xml',
            checkpoint: '81397ad4229e65572fb5386f445e7ecfdfc2161c51ce85747d2b4768b419984e'
  elsif MacOS.version == :mountain_lion
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
    version '8.9.1'
    sha256 '13302ccdca9ebfdda6f15eba7a6782b9720a5573777f809c6ce9e80b799d15c8'

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml',
            checkpoint: '20bd5007e6c0280efd8e01b5cd4afa9020ab80abbf464273c5c47f8f9b591031'
  else
    version '9.3.4'
    sha256 '28a6b6b8704e375f0a640903b43a2560aec888c3c5bf3f11540b87d87ede3f2e'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            checkpoint: '73f8b6019d64c72cc94c3c2a395eb60b03c249014b33fd46f8c4a5000404cbdd'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'
  license :commercial

  app 'Cocktail.app'
end
