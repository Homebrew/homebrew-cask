cask 'fing' do
  version '5.3.3'
  sha256 'c3ba4964fcec0a027893e4f31065f47868b82f226e1da82871d66ed580249cd3'

  url 'https://www.fing.com/images/uploads/general/CLI_macOSX.zip'
  name 'Fing'
  homepage 'https://www.fing.com/'

  pkg "fing-#{version}-osX.pkg"

  uninstall pkgutil: 'com.fing.Fing.plist'
end
