cask :v1 => 'dungeon-crawl-stone-soup-console' do
  version '0.15.0'
  sha256 '6ce3eccae0ccf077b6d6df936c7ac51b3fcb896f32c6b001b1016199effca371'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'http://crawl.develz.org'
  license :gpl

  app 'Dungeon Crawl Stone Soup - Console.app'
end
