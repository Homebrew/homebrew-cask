cask 'fldigi' do
  version '3.23.09'
  sha256 '930d749518287a6c8ced9b5f90c79f7b6abae660cb2d0bff8318a41e9453c03c'

  url "https://downloads.sourceforge.net/project/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss',
          checkpoint: '8e41d369de77412b268653a145d8dd1d5562857ae0476694b0ef2e78c3dee144'
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
