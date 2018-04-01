cask 'singularity' do
  version '1.8.6,6156'
  sha256 '002597a1d7386ff1b505416476fce812037a38c61bd152212fd758db943de40c'

  # bitbucket.org/SingularityViewer/singularityviewer was verified as official when first introduced to the cask
  url "https://bitbucket.org/SingularityViewer/singularityviewer/downloads/Singularity_#{version.dots_to_underscores.sub(',', '_')}.dmg"
  name 'Singularity Viewer'
  homepage 'http://www.singularityviewer.org/'

  app 'Singularity.app'
end
