cask 'digikam' do
  version '6.4.0'
  sha256 '714ea60db0125bdb38b434aa9d98a3c8b7c3a23869b6f5d397058552a8af6e11'

  # kde.org/stable/digikam/ was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam'
end
