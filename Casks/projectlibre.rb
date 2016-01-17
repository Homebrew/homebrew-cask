cask 'projectlibre' do
  version '1.6.2'
  sha256 '6136fd390d357ec7f92f56619520ffff7a1255155ee20b25b2df8b96a7208f12'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/projectlibre/ProjectLibre/#{version}/projectlibre-#{version}.dmg"
  name 'ProjectLibre'
  homepage 'http://www.projectlibre.org/'
  license :oss

  app 'ProjectLibre.app'
end
