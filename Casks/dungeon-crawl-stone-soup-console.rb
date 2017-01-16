cask 'dungeon-crawl-stone-soup-console' do
  version '0.19.1'
  sha256 'f07d646e1619d937b763e55eb4c2883c5601acd7e3fb0044a8fa7254d39f6ea1'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '8e77d98e2f53d2d95fd2e2a2733f1032f8e5e81f99023b98d2e0b3a6531b60c4'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
