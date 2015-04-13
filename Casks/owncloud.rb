cask :v1 => 'owncloud' do
  version '1.8.0.2139'
  sha256 'd0c68f3c29e9f9c05629e6eef87b826b6e64f10360964ede081257f4be0a4892'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'http://owncloud.com'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
