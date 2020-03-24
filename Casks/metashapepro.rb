cask 'metashapepro' do
  version '1.6.1'
  sha256 '85bc2703ff1d6283ba819371be64c1a234efaa91d5a0c93b701cd742b5a341a1'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
