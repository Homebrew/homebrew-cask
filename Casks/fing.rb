cask 'fing' do
  version '5.5.0'
  sha256 'a9254738782e50197cc944becc7b5f84ce534797d82dec0c9391a75580ba016d'

  url "https://www.fing.com/images/uploads/general/CLI_macOSX_#{version}.zip"
  appcast 'https://www.fing.com/products/development-toolkit/'
  name 'Fing'
  homepage 'https://www.fing.com/products/development-toolkit/'

  pkg "Fing-#{version}-osX.pkg"

  uninstall pkgutil: 'Fing'
end
