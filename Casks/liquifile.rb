cask :v1 => 'liquifile' do
  version :latest
  sha256 :no_check

  url 'http://www.liquifile.info/Liquifile.dmg'
  homepage 'http://www.liquifile.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Liquifile_1_8.app'
end
