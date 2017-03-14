cask 'digikam' do
  version '5.5.0-01'
  sha256 '3592d0a6ef3882676af3b028c62805894bff7b59dae6a9e4464d557787622ddc'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: 'a21c306be72e23dbf015fbc74072b2b194ed3b5ec4223996cd85c79838e2b389'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
