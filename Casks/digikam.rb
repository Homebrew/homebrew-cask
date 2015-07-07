cask :v1 => 'digikam' do
  version '4.11.0'
  sha256 'cfc3f1ec5963ba8a16e63cd998f8fdfd5de29586a1e172e546c05bc3bbecf751'

  url "http://download.kde.org/stable/digikam/digikam-#{version}-Yosemite.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-Yosemite.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
