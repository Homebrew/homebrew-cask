cask 'dungeon-crawl-stone-soup-console' do
  version '0.19.5'
  sha256 '1a796d5334535e22b02be0faf64626bee92a7d3adc69b44c9fedef5aaef88530'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '0c07525c67a2cc50b4dc881e5ba2309a02f784fd74375530d3a852abbe5f5f24'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
