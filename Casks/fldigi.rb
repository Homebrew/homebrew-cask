cask 'fldigi' do
  version '3.23.12'
  sha256 '9c63ab88c280456c713c0e88fa42453529d08c761f47b18d5b8c535bcdbd13ee'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'cf5589963f2f67d76bfe7f1fff77028d071fd026d4f30c9c031f7b34ba0deeef'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
