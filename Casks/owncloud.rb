cask :v1 => 'owncloud' do
  version '1.8.0.2014beta1'
  sha256 '705ede6c49ab0a38ecace66e0451c6c40bc13635a04715b7eecdd3a360bd02d1'

  url "https://download.owncloud.com/desktop/testing/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'http://owncloud.com'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
