cask 'digikam' do
  version '6.3.0'
  sha256 '595ddea73d5af9b6658123776920b2a570367d856055859ac11687681f53f6a2'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam'
end
