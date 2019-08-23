cask 'metashapepro' do
  version '1.5.3'
  sha256 'ddf8b91010d1562d4ea7194ed6cf50117ee5d1e5423b03dd1343187e28d27c11'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
