cask :v1 => 'owncloud' do
  version '2.0.1.2694'
  sha256 'cffacafe18065f4bfba3a5b0ccecbe73d7facad643a6e8c02ac4add3bce56411'

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
