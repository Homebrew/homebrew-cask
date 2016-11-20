cask 'dungeon-crawl-stone-soup-console' do
  version '0.19.0'
  sha256 'd25d7dbb42cd5ba8e04592d431e7b405b4f22152af85a82580a7a610fcfa6639'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
