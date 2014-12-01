cask :v1 => 'owncloud' do
  version '1.7.0.1490'
  sha256 '95353334ad67e3e03d17320b9848278762cb6eaf16e369121a3c81a4d05ab070'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  homepage 'http://owncloud.com'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
