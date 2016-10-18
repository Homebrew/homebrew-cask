cask 'digikam' do
  version '5.2.0-02'
  sha256 '78f2f57f4a49c99792c1c656a7bdcaef3404c85df019d8b031c99b364087e5a5'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
