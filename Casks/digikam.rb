cask 'digikam' do
  version '6.2.0'
  sha256 '4f0d9c534287f755c59c0ceb00fb56c8b4c5a61bb52301d19f89bcac43d2fe0f'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam'
end
