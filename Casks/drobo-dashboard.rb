class DroboDashboard < Cask
  url = 'http://www.drobo.com/start/download/dashboard/Drobo-Dashboard-installer-2.5.2.dmg'
  homepage 'http://wwww.drobo.com'
  version '2.5.2'
  sha1 'a7b81536c94674d3442ba6178f98d1acfdbe0d3e'
  install 'Install.app/Contents/Install.app/Drobo_Dashboard_Installer_2.5.2.pkg'
end
