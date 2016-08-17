cask 'digikam' do
  version '5.1.0-01'
  sha256 '39c7f55f9c3c8b02cc56488607f42acb8c611b5dbcc8a3e7099eb651e18563f1'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
