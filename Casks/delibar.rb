cask :v1 => 'delibar' do
  version :latest
  sha256 :no_check

  # shinyfrog.net is the official download host per the vendor homepage
  url 'http://static.shinyfrog.net/downloads/delibar/Delibar.zip'
  appcast 'http://apps.shinynode.com/apps/delibar_appcast.xml'
  name 'Delibar'
  homepage 'http://www.delibarapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Delibar.app'
end
