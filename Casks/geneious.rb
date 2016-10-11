cask 'geneious' do
  version '9.1.2'

  if MacOS.version <= '10.6'
    sha256 '304afaac8251594d03379737e8263f45297da822b63b306d056057a950255ff2'

    url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}.dmg"

    caveats do
      depends_on_java('6')
    end
  else
    sha256 '1e7da712b396e34c0f87d36745d7f23c4ae4d4557926e42e11d6def623be18b3'

    url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  end

  name 'Geneious'
  homepage 'https://www.geneious.com/'

  app 'Geneious.app'
end
