cask 'parallels-client' do
  version '17.0.1-21472'
  sha256 '2540ef40ae7f262ef8ff3b4c3193c3dd83ca9ef2bbcc9a48cccd91703d9764e8'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt"
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
