cask 'projectlibre' do
  version '1.9.1'
  sha256 'a29e3158939a30b61fdfa6b205a6ee8cb767f28ad101e968186770440dc0b183'

  # sourceforge.net/projectlibre/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/ProjectLibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre'
  name 'ProjectLibre'
  homepage 'https://www.projectlibre.com/'

  app 'ProjectLibre.app'
end
