cask 'digikam' do
  version '5.8.0-01'
  sha256 '55b29ed93f8e0fa0177234305a29d226e5a9d094409f9b626bc61237e1e04864'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: 'c993d10ca14d0588b4698375a60b5c3644621cccf9318514be10a740e36c69a7'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
