cask 'parallels-client' do
  version '16.2.3-19419'
  sha256 '6ca634274386a46578cd62696a6bf7f990ab003ad2e50d85e397e288b8375c71'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt",
          checkpoint: '79e4c66f02cc47cd2593124a2a2a8063e27ab2f699f8f11f9ce5cec85e178359'
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
