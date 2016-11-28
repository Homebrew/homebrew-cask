cask 'digikam' do
  version '5.3.0-01'
  sha256 '8bf6565a7f947d50429c8910772a83f4e0760cd5e832babd4a22c53341908dd4'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
