cask 'singularity' do
  version '1.8.6(6156)'
  sha256 '002597a1d7386ff1b505416476fce812037a38c61bd152212fd758db943de40c'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/SingularityViewer/singularityviewer/downloads/Singularity_#{version.gsub(%r{[.(]}, '_').delete(')')}.dmg"
  name 'Singularity Viewer'
  homepage 'http://www.singularityviewer.org/'
  license :gpl

  app 'Singularity.app'
end
