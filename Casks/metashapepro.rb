cask 'metashapepro' do
  version '1.6.2'
  sha256 'd0313cd8570da9cd331c1f073ec8fe22e57ce8da6257a603274e11b415a2dd22'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
