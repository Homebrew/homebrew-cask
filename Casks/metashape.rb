cask 'metashape' do
  version '1.5.5'
  sha256 '0aaed38cb8da38d5a8f3fce5e248d693f3c65f14dec6ca59ce4578a9cdeb84cc'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
