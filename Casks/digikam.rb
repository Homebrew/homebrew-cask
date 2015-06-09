cask :v1 => 'digikam' do
  version '4.10.0'
  sha256 '57b0136bce42038fea247582fb17bb2651061ea67b7ff31db789bf2aea1c94ec'

  url "http://download.kde.org/stable/digikam/digikam-#{version}.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
