cask 'dungeon-crawl-stone-soup-console' do
  version '0.20.0'
  sha256 '306fd4af7b71490c3ba1571e32704755a41c42741abe1f653e91381a065acbd7'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: '6a1a575e61b3cda7c6dd7bfab03a7c67a063e5dd95a74881b50368e9972d1591'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
