cask 'cuppa' do
  version '1.7.9'
  sha256 '03172c74f887358bdb21678831f608226c6e17816befc11a8c01b16ec192e820'

  url "http://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'http://www.nathanatos.com/software/cuppa.xml',
          checkpoint: 'f01c77b88898d21e63f1fb75b9f00e182664d674a9b2b9f4d4daba61e14440e0'
  name 'Cuppa'
  homepage 'http://www.nathanatos.com/software'
  license :bsd

  app 'Cuppa.app'
end
