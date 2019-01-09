cask 'dungeon-crawl-stone-soup-console' do
  version '0.22.1'
  sha256 'ab2152518d6f06f14f82b57e508e98947c1a6b3c38a43a4d150be620d1675d27'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
