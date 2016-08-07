cask 'digikam' do
  version '5.0.0'
  sha256 'dc06b0908ebb2d20979302a8b7211b9dbe9d0721df5bcd6b36db297ef30fe28c'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
