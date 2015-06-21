cask :v1 => 'digikam' do
  version '4.10.0'
  sha256 'bd444fba4ed50dcf41fd21363c63bc64b2adf14e2ba14da6c4cd631cf70d68dd'

  url "http://download.kde.org/stable/digikam/digikam-#{version}-Yosemite.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-Yosemite.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
