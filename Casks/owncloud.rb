cask :v1 => 'owncloud' do
  version '2.0.0.2666'
  sha256 '2b6a10b5c28604bbc457d090b6e3089fb07d51e44a05cb0ea7fd076a76f96301'

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
