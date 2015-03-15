cask :v1 => 'dungeon-crawl-stone-soup-console' do
  version '0.16.0'
  sha256 '3b4750f6bedb4b7e6d0279f476b3cb55124f93871eecb1c53ebda2621ce51b43'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Console.app'
end
