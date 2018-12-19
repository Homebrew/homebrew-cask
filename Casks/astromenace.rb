cask 'astromenace' do
  version '1.3.2'
  sha256 '8a298c84d5cfd24d01013eae94ded4cc4c6598c5cc8fc4b4c9ff85637f74cdef'

  # downloads.sourceforge.net/openastromenace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openastromenace/astromenace-macosx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/openastromenace/rss'
  name 'AstroMenace'
  homepage 'https://viewizard.com/'

  app 'AstroMenace.app'
end
