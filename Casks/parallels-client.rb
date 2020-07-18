cask 'parallels-client' do
  version '17.1.2-21853'
  sha256 '0a6faf0513cbf182423b60b7f6c621195efa5d19719be81079e7fc21d398f38b'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-Appstore-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt"
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-Appstore-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
