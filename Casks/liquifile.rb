cask 'liquifile' do
  version '1.8'
  sha256 '81e8a0583af77fe9a2fbafa3433e73a5cb8567fdd53e37119b431c4ea6ce242d'

  url 'http://www.liquifile.info/Liquifile.dmg'
  appcast 'http://www.liquifile.info/',
          checkpoint: 'c15e603a4ef343df45c22eea78b2035685b6b1f9a5f1ae0c884b8d1e01c24fba'
  name 'Liquifile'
  homepage 'http://www.liquifile.info/'

  app "Liquifile_#{version.dots_to_underscores}.app"
end
