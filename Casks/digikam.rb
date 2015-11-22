cask :v1 => 'digikam' do
  version '4.13.0'
  sha256 'badc0d7f4f3c7092f0722cfcd546cea277e11ac97f948e4e1a23e749f3c400a0'

  url "http://download.kde.org/stable/digikam/digikam-#{version}-Yosemite.pkg"
  name 'digiKam'
  homepage 'https://www.digikam.org'
  license :gpl

  pkg "digikam-#{version}-Yosemite.pkg"

  uninstall :pkgutil => 'org.freedesktop.digikam'
end
