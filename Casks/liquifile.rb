cask :v1 => 'liquifile' do
  version '1.8'
  sha256 '81e8a0583af77fe9a2fbafa3433e73a5cb8567fdd53e37119b431c4ea6ce242d'

  url 'http://www.liquifile.info/Liquifile.dmg'
  name 'Liquifile'
  homepage 'http://www.liquifile.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "Liquifile_#{version.gsub('.','_')}.app"
end
