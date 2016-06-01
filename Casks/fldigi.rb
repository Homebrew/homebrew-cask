cask 'fldigi' do
  version '3.23.09'
  sha256 '930d749518287a6c8ced9b5f90c79f7b6abae660cb2d0bff8318a41e9453c03c'

  url "http://downloads.sourceforge.net/project/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
