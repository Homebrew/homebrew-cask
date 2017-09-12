cask 'digikam' do
  version '5.7.0-01'
  sha256 '709d6c417470cc426a5b97db2b174852f625149df10161e3d2139396c7898755'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: '676349272c062e2f9011c1ac4c29b304728f9f4eb31ed4d1eedb442fb9f5e83e'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
