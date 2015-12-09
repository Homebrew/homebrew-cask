cask :v1 => 'owncloud' do
  version '2.1.0.2944'
  sha256 '2932ef2410a168b5d21a2d1e909fa2aadf1920d33b297f6248a03d333e9bd209'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'https://owncloud.com/'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
