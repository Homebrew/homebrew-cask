cask 'metashape' do
  version '1.6.2'
  sha256 '702692280a24618ef7b3fc9175c592c65d47b2ae876cb0bc1e84d4e8ed77f6c7'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
