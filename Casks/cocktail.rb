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
    version '8.9.2'
    sha256 'acc7d191313fa0eb4109ae56f62f73e7ed6685f7d7d438d5138b85d68e40edd8'

    url "https://www.maintain.se/downloads/sparkle/yosemite/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml',
            checkpoint: 'ffe079c9b71d0f356c8a4d45ecf4f5a50e1d284c972b0a1e5cf92234d7a1010e'
  elsif MacOS.version == :el_capitan
    version '9.3.5'
    sha256 'e34a9d9fd7ec22e00e78d5627b5f2ad5c8dc4a6c8050ec2413d3cbc46c1812f2'

    url "https://www.maintain.se/downloads/sparkle/elcapitan/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/elcapitan/elcapitan.xml',
            checkpoint: 'a4d0e1719641e583255e63fc6d20aea2d910d77cdf9cb51ff5402d9a519109a1'
  else
    version '10.0.1'
    sha256 'ea90cbbfe33ddfe8c789ce6bde1a23d8edc11ae305a7a57e40fa79543b73abdf'

    url "https://www.maintain.se/downloads/sparkle/sierra/Cocktail_#{version}.zip"
    appcast 'https://www.maintain.se/downloads/sparkle/sierra/sierra.xml',
            checkpoint: '2ae2b8f19373912c47436bd4bdf89891c95739c90c299b8a414fa3c768ba21cc'
  end

  name 'Cocktail'
  homepage 'https://www.maintain.se/cocktail/'
  license :commercial

  app 'Cocktail.app'
end
