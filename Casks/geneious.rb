cask 'geneious' do
  version '9.1.2'
  sha256 '304afaac8251594d03379737e8263f45297da822b63b306d056057a950255ff2'

  url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}.dmg"
  name 'Geneious'
  homepage 'http://www.geneious.com/'
  license :commercial

  app 'Geneious.app'

  caveats do
    depends_on_java('6')
  end
end
