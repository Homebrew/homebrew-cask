cask 'metashape' do
  version '1.5.2'
  sha256 '3227831b427078f97d7b05ae34080f2d12794b9a421074101333abbb41a8f8c6'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
