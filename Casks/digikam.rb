cask :v1 => 'digikam' do
  version '4.12.0'
  sha256 'dfc4ec4226aca026175b84e7d285837e28e95439e44e99897321ab3e2a450317'

  url "http://download.kde.org/stable/digikam/digikam-#{version}-Yosemite.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-Yosemite.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
