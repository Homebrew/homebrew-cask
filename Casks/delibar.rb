class Delibar < Cask
  version :latest
  sha256 :no_check

  url 'http://static.shinyfrog.net/downloads/delibar/Delibar.zip'
  appcast 'http://apps.shinynode.com/apps/delibar_appcast.xml'
  homepage 'http://www.delibarapp.com/'

  app 'Delibar.app'
end
