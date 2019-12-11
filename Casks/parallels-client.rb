cask 'parallels-client' do
  version '17.1.0-21669'
  sha256 'f33ac54837c2376dd1d8c229b1368dfb17cc329cc7a0a1afea044901f0fc1eb5'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-Appstore-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt"
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-Appstore-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
