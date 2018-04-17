cask 'butt' do
  version '0.1.16'
  sha256 'eab9446889684a186b7d78cd935fdaa871166f5aab6c7002ff5dc22a0c5e5f82'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss',
          checkpoint: 'c2d23fd3b8d099f41d97f4df22774b4acda19255e88a7a67db8f908417ec32b2'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
