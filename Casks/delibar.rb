cask :v1 => 'delibar' do
  version :latest
  sha256 :no_check

  url 'http://static.shinyfrog.net/downloads/delibar/Delibar.zip'
  appcast 'http://apps.shinynode.com/apps/delibar_appcast.xml'
  homepage 'http://www.delibarapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Delibar.app'
end
