cask 'dungeon-crawl-stone-soup-console' do
  version '0.25.0'
  sha256 '8edd26f9255c49f2c7c3a606bff6e9ecca25466313f67ced4bd8a26c2fcc83c1'

  # github.com/crawl/crawl/releases was verified as official when first introduced to the cask
  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
