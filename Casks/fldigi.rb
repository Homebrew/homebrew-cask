cask 'fldigi' do
  version '3.23.12'
  sha256 '9c63ab88c280456c713c0e88fa42453529d08c761f47b18d5b8c535bcdbd13ee'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss',
          checkpoint: '8e41d369de77412b268653a145d8dd1d5562857ae0476694b0ef2e78c3dee144'
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
