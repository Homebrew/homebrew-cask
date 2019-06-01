cask 'metashapepro' do
  version '1.5.2'
  sha256 '1cb5e77c11d43b3b6c462c8cbd6b9bbbbbbf7f68771277a4dfebeadd7d32d631'

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Metashape Professional Edition'
  homepage 'https://www.agisoft.com/'

  app 'MetashapePro.app'
end
