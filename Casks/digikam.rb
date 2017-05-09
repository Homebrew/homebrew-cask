cask 'digikam' do
  version '5.5.0-01'
  sha256 '3592d0a6ef3882676af3b028c62805894bff7b59dae6a9e4464d557787622ddc'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: '43d3da19a65b3595a6dd05bcacd4938eb1bef69fd8709127b496d7e3b0277231'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
