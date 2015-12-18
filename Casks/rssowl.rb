cask 'rssowl' do
  version '2.2.1'
  sha256 '9a94beac7951937b6684aeabea323993860c43f8adbe959bb7a109dc22f0598c'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/project/rssowl/rssowl%202/#{version}/RSSOwl%20#{version}.dmg"
  name 'RSSOwl'
  homepage 'http://www.rssowl.org/'
  license :eclipse

  app 'RSSOwl.app'
end
