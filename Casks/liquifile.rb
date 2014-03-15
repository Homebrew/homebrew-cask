class Liquifile < Cask
  url 'http://www.liquifile.info/Liquifile.dmg'
  homepage 'http://www.liquifile.info/'
  version 'latest'
  no_checksum
  link 'Liquifile_1_8.app', :target => 'Liquifile.app'
end
