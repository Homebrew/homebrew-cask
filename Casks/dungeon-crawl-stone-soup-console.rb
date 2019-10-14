cask 'dungeon-crawl-stone-soup-console' do
  version '0.23.0'
  sha256 '49d4e7812438193de33c4c3cc3bc3456692860e4843815c5573e63d21bae4a4e'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
