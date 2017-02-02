cask 'projectlibre' do
  version '1.7'
  sha256 'ca165c27bea9f160cd069e464c3b8a1a3d3bc6f79876d221fb4a88165e0941e7'

  # sourceforge.net/projectlibre was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version}/projectlibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre',
          checkpoint: 'ea24a5a3b6905c46f265a1e58356273fee75764209a22bdcb65a3af66f836cc7'
  name 'ProjectLibre'
  homepage 'http://www.projectlibre.com/'

  app 'ProjectLibre.app'
end
