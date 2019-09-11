cask 'metashapepro' do
  version '1.5.4'
  sha256 '4c84c22277a95cfd06c20901c839caf7f79864cbc2ad6e65d1f7ca0cf8efbb31'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
