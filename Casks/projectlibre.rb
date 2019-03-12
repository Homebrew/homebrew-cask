cask 'projectlibre' do
  version '1.9.0'
  sha256 '4a55fc42c62630c903b805c1e2a69976b1b580c551a0a175e357febccb88bfdd'

  # sourceforge.net/projectlibre was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/ProjectLibre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre'
  name 'ProjectLibre'
  homepage 'https://www.projectlibre.com/'

  app 'ProjectLibre.app'
end
