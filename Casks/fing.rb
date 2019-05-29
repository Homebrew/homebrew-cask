cask 'fing' do
  version '5.4.0'
  sha256 'e7e2fe5906c6f6e21ff8d620f463fcae7f895d3f4c732426214dff4b8dc868aa'

  url "https://www.fing.com/images/uploads/general/CLI_macOSX_#{version}.zip"
  appcast 'https://www.fing.com/products/development-toolkit/'
  name 'Fing'
  homepage 'https://www.fing.com/products/development-toolkit/'

  pkg "Fing-#{version}-osX.pkg"

  uninstall pkgutil: 'Fing'
end
