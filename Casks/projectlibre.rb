cask 'projectlibre' do
  version '1.8.0'
  sha256 'c25bed132701c929afeb649ff208c5a75620e20f02f63eb7b10dae207635fe28'

  # sourceforge.net/projectlibre was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/ProjectLibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre'
  name 'ProjectLibre'
  homepage 'https://www.projectlibre.com/'

  app 'ProjectLibre.app'
end
