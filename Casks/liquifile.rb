cask 'liquifile' do
  version '1.8'
  sha256 '81e8a0583af77fe9a2fbafa3433e73a5cb8567fdd53e37119b431c4ea6ce242d'

  url 'http://www.liquifile.info/Liquifile.dmg'
  name 'Liquifile'
  homepage 'http://www.liquifile.info/'

  app "Liquifile_#{version.dots_to_underscores}.app"
end
