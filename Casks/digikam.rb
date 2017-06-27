cask 'digikam' do
  version '5.6.0-01'
  sha256 '69b79d983534d0111c0c9cba5a211d594fa449706bada2c60826f319238f5fe3'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: '20038497c4e4a4455925ef921328cc30c06f740759ab7ab7b6852b06fbd86fd8'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
