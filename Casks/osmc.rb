cask :v1 => 'osmc' do
  version :latest
  sha256 :no_check 

  
  url 'http://download.osmc.tv/installers/osmc-installer.dmg'
  name 'OSMC'
  homepage 'https://osmc.tv/'
  license :gpl
  
  app 'qt_host_installer.app', :target => 'OSMC_setup.app'
end
