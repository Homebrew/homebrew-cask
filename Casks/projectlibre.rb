cask 'projectlibre' do
  version '1.7'
  sha256 'ca165c27bea9f160cd069e464c3b8a1a3d3bc6f79876d221fb4a88165e0941e7'

  # sourceforge.net/projectlibre was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version}/projectlibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre',
          checkpoint: '0097cef0c2be756e33fa9c0c73557f1cfe62121e824c08b8cb8ee6c56bc72b08'
  name 'ProjectLibre'
  homepage 'https://www.projectlibre.com/'

  app 'ProjectLibre.app'
end
