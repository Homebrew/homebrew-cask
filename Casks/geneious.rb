cask 'geneious' do
  version '9.0.5'
  sha256 'e7e80258406d223630a5d10c2fb351847d9571da757d9585cd47a819797b2cd2'

  url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}.dmg"
  name 'Geneious'
  homepage 'http://www.geneious.com/'
  license :commercial

  app 'Geneious.app'

  caveats do
    depends_on_java('6')
  end
end
