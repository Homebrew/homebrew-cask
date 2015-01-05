cask :v1 => 'dungeon-crawl-stone-soup-console' do
  version '0.14.0'
  sha256 'aea657c098a662f83dd227a2e3aa1f2f2c566bfea5076d686f601691538d298e'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  name 'Dungeon Crawl Stone Soup'
  homepage 'http://crawl.develz.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Dungeon Crawl Stone Soup - Console.app'
end
