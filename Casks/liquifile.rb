cask :v1 => 'liquifile' do
  version :latest
  sha256 :no_check

  url 'http://www.liquifile.info/Liquifile.dmg'
  homepage 'http://www.liquifile.info/'
  license :unknown    # todo: improve this machine-generated value

  app 'Liquifile_1_8.app'
end
