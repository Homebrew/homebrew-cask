cask :v1 => 'owncloud' do
  version '1.7.0.1339'
  sha256 'baa848c46e0a1cc0e88cf78a2419bfdb7d55fd984100d9fe1babc4a97eb00d9a'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  homepage 'http://owncloud.com'
  license :unknown

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
