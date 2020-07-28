cask 'descript' do
  version :latest
  sha256 :no_check

  url "https://electron.descript.com/Descript%20Installer.app.zip"
  name 'Descript'
  homepage 'https://www.descript.com/'

  pkg 'Descript Installer.app'

  # uninstall pkgutil: 'com.avatron.pkg.AirDisplay'
end
