cask :v1 => 'owncloud' do
  version '1.8.4.2531'
  sha256 '4435bd4e1e6a07f8aadf47d33d42c08449cbe517433e21c7723c4815a97cee84'

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
