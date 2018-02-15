cask 'parallels-client' do
  version '16.2.1-19160'
  sha256 'faef3493267c82b5125acaba95d654e54aeb02d8f32813139d10f1141151fcaf'

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt",
          checkpoint: '11d399226271347946cb90c769235a1736f49d2021e325d972bfa113329d01e7'
  name 'Parallels Client'
  homepage 'https://www.parallels.com/products/ras/features/rdp-client/'

  pkg "RasClient-Mac-#{version}.pkg"

  uninstall pkgutil: 'com.2X.Client.Mac',
            quit:    'com.2X.Client.Mac'
end
