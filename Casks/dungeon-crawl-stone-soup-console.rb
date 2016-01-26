cask 'dungeon-crawl-stone-soup-console' do
  version '0.16.1'
  sha256 '384527e0b0ce8c3df216a577461266d405bb7652d6efcaaf3730c9718590e319'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macos.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Console.app'
end
