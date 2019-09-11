cask 'metashape' do
  version '1.5.4'
  sha256 '39fa1f1e4ac3431754b5561faf80be5a596995ce2e8a617db42b8ebb3a56e512'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
