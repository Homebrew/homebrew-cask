cask 'dungeon-crawl-stone-soup-console' do
  version '0.20.1'
  sha256 '3c44a4f7c670ea74a2a6b59b5a13735d73b3ac7c4c5b8f9b7f313daf591e5b9d'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '957a105056d323391f7fb641d3b2443f87b02ec3fcc92eb15e3382bfac2a042c'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
