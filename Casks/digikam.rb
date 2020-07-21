cask 'digikam' do
  version '7.0.0'
  sha256 '8b5a4abbf0c5c51b429b14c8f37cd269ed66569614faaa0bc09ead3f577122a5'

  # kde.org/stable/digikam/ was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam'
end
