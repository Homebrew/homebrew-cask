cask 'parallels-client' do
  version '17.0.0-21282'
  sha256 '8cb12254b5b40ed5207f9d63807c47d0654c49c60c23382963249059b8e9949f'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt"
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
