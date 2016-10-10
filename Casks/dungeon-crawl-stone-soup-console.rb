cask 'dungeon-crawl-stone-soup-console' do
  version '0.18.1'
  sha256 'c7bb424dd09aed5110ff9d21185a4328ee4cd2ca1cd81c4f38594fd77d1e42ec'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.dmg"
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
