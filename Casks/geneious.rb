cask 'geneious' do
  version '10.0.7'
  sha256 'c20eb2199634ce03bd2032ff45ceb3e36e8b50b6092a876323962c7bcd12d261'

  url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious.app'
end
