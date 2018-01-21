cask 'dungeon-crawl-stone-soup-console' do
  version '0.21.0'
  sha256 'fc0ba232b8728122b0912c4ef06b37000c17176a935d7a08d6b067df60ef1560'

  url "https://crawl.develz.org/release/#{version.major_minor}/stone_soup-#{version}-console-macosx.zip"
  appcast 'https://github.com/crawl/crawl/releases.atom',
          checkpoint: 'dd96d66f02bc77ccf322d3031ca3b8a59f3870901cd6013b9e2c915ecce7e1b6'
  name 'Dungeon Crawl Stone Soup'
  homepage 'https://crawl.develz.org/'

  app 'Dungeon Crawl Stone Soup - Console.app'
end
