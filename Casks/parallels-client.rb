cask 'parallels-client' do
  version '16.2.2-19300'
  sha256 'c89cba2abf932f2cdae75970423279fce46cbddeb74ac5b418b771e9f265fad0'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt",
          checkpoint: 'bd774820d008ca14388354ea60d3e85d82c0e5da61cba218902a2d5263a4d712'
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
