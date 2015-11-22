cask :v1 => 'digikam' do
  version '4.13.0'
  sha256 'd06c37484bf80b1fe8e55302951606588c9f731277f62931698d324f15ae40aa'

  url "http://download.kde.org/stable/digikam/digikam-#{version}-Yosemite.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-Yosemite.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
