cask 'cuppa' do
  version '1.7.9'
  sha256 '03172c74f887358bdb21678831f608226c6e17816befc11a8c01b16ec192e820'

  url "https://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'https://www.nathanatos.com/software/cuppa.xml',
          checkpoint: '0a5d7da8744a77eb818aa12dcc6a033d70c5fa18c5cb7b81787e21670621974f'
  name 'Cuppa'
  homepage 'https://www.nathanatos.com/software/'

  app 'Cuppa.app'
end
