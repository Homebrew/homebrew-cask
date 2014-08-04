class Liquifile < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.liquifile.info/Liquifile.dmg'
  homepage 'http://www.liquifile.info/'

  link 'Liquifile_1_8.app', :target => 'Liquifile.app'
end
