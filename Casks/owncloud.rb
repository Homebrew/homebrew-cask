cask :v1 => 'owncloud' do
  version '1.8.3.2458'
  sha256 'a4091364faed523bd1b77494e3e12947164e3d132bf16cd4cb8d28f6109d1399'

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
