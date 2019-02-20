cask 'digikam' do
  version '6.0.0'
  sha256 '0cf39ef779876ae98b0c681afa9acab6724725fdab55b208c2a136c946dbdc2f'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam'
end
