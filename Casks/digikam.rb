cask 'digikam' do
  version '5.9.0-01'
  sha256 'd3b76fcabfbd281289702d2c3a1f6ab63cda3b8f45cc54e642fee329cb0f197c'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
