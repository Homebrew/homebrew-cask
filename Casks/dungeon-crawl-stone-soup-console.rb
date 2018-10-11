cask 'dungeon-crawl-stone-soup-console' do
  version '0.22.0'
  sha256 '711e6cccd17598c88b042ee61ffbaa17f3f20a983be4c952179e6a93fb698e4e'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
