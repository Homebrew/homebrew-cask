cask 'metashape' do
  version '1.6.3'
  sha256 '08fad4f115d11f1c486c006ae4bfcb8342c58582e355cda5e5bc9fd59a9d1aa3'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
