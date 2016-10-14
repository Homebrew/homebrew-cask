cask 'projectlibre' do
  version '1.6.2'
  sha256 '6136fd390d357ec7f92f56619520ffff7a1255155ee20b25b2df8b96a7208f12'

  # sourceforge.net/projectlibre was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version}/projectlibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre',
          checkpoint: '46f531cd85f0e21dd45d51c3516fe1d1b7a575d6b52708b190f969f0e5e4590a'
  name 'ProjectLibre'
  homepage 'http://www.projectlibre.org/'

  app 'ProjectLibre.app'
end
