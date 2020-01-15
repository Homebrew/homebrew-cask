cask 'metashapepro' do
  version '1.6.0'
  sha256 '6eb83b9b4ac95eabc6257383032d7d477776f05ce432f8d54b611e81ea9de33e'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
