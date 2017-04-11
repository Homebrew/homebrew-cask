cask 'dungeon-crawl-stone-soup-console' do
  version '0.19.5'
  sha256 '1a796d5334535e22b02be0faf64626bee92a7d3adc69b44c9fedef5aaef88530'

  url "https://crawl.develz.org/release/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '4234b9bedc4b38b107b5ae7f46b41fc1c3f878ebe27e1ede96779b3a91b0cbc5'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
